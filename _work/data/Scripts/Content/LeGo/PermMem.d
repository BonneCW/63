/***********************************\
              PERMMEM
\***********************************/

/* Abhängigkeiten:
    IKARUS
    Saves
    Locals

 * Info:
    PermMem ist ein sehr mächtiges Paket. Es erlaubt Klassen (bzw. Instanzen) permanent zu nutzen, auch nachdem geladen oder neu gestartet wurde.
    PermMem ist recht schwer zu verstehen. Ich empfehle die Beispiele hierzu anzusehen.

 * Inhalt:
 *  int new(instance inst)
        Erstellt ein neues Handle auf eine neue Instanz von 'inst'
        inst   : Eine gültige Instanz. Genutzt als "Konstruktor"
        return : Neues, gültiges Handle

 *  int create(instance inst)
        Ähnlich wie 'new', nur wird hier direkt ein Pointer zurückgegeben und kein Handle
		Vorsicht! Wird nicht von PermMem verwaltet! Siehe Examples/PermMem_Übersicht.d
        inst   : Eine gültige Instanz. Genutzt als "Konstruktor"
        return : Pointer auf die neue Instanz

 *  void clear(int handle)
        Säubert das Handle 'handle'. Danach ist es ungültig
        handle : Gültiges PermMem-Handle

 *  void delete(int handle)
        Säubert das Handle 'handle' ebenso wie clear, nur wird zusätzlich noch der Destruktor aufgerufen
        handle : Gültiges PermMem-Handle

 *  void free(int ptr, instance inst)
        Ähnlich wie 'delete', nur wird hier ein Pointer zerstört und kein Handle
		Vorsicht! Wird nicht von PermMem verwaltet! Siehe Examples/PermMem_Übersicht.d
        ptr  : Der zu säubernde Pointer
        inst : Instanz die bei "create" genutzt wurde

 *  instance get(int handle)
        Gibt die Instanz des handles zurück
        handle : Gültiges PermMem-Handle
        return : Instanz von handle

 *  int getPtr(int handle)
        Gibt im Gegensatz zu 'get' nicht die Instanz, sondern den Pointer darauf zurück
        handle : Gültiges PermMem-Handle
        return : Pointer auf Instanz von handle

 *  int numHandles()
        Die Anzahl der Handles die von PermMem verwaltet werden (für den Nutzer eher unwichtig)
        return : Anzahl der Handles
		
 *  int sizeof(instance inst)
		Steht mit PermMem nicht direkt in Verbindung, ist aber nützlich.
		inst   : Beliebige Instanz
		return : Größe der Klasse der Instanz in Bytes

 *  int Hlp_IsValidHandle(int handle)
        Gibt an ob das Handle 'handle' existiert und von PermMem verwaltet wird
        handle : Handle von PermMem
        return : Ist handle gültig?

 *  int zCParser_CreateInstance(int inst, int ptr)
        Enginecall. Ruft die Instanzfunktion 'inst' für 'ptr' auf

 * Um PermMem verwenden zu können muss LeGo_Init mit LeGo_PermMem aufgerufen werden.
 */


//========================================
// [intern] Variablen
//========================================
const int Handles = 0;
var zCArray HandlesObj;
var int _PM_ArrayElements;
var int _PM_Inst;
var int _PM_Stack;

//========================================
// Anzahl Handles
//========================================
func int numHandles() {
    if (Handles) {
        return HandlesObj.numInArray / 2;
    };
    return false;
};

//========================================
// Instanzfunktion callen
//========================================
func int zCParser_CreateInstance(var int inst, var int ptr) {
    CALL_IntParam(ptr);
    CALL_IntParam(inst);
    CALL__thiscall(parser, zCParser__CreateInstance);
    return CALL_RetValAsInt();
};

//========================================
// Handle auf Gültigkeit prüfen
//========================================
func int Hlp_IsValidHandle(var int h) {
    if (!handles) { return false; };

    if (h > 0)
    && (h <= HandlesObj.numInArray / 2) {
        return MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2) > 0;
    };

    return false;
};

//========================================
// [intern]
//========================================
func MEMINT_Helperclass _PM_ToClass(var int inst) {
    var zCPar_Symbol symbInst;
    symbInst = MEM_PtrToInst(MEM_ReadIntArray (currSymbolTableAddress, inst));
    var zCPar_Symbol symbCls;
    symbCls = MEM_PtrToInst(symbInst.parent);
    if ((symbCls.bitfield & zCPar_Symbol_bitfield_type) == zPAR_TYPE_PROTOTYPE) {
        MEM_PtrToInst(symbCls.parent);
    }
	else {
		MEM_PtrToInst(symbInst.parent);
	};
};

//========================================
// Größe einer Instanz ermitteln
//========================================
func int sizeof(var int inst) {
    var zCPar_Symbol symb; symb = _PM_ToClass(inst);
    return symb.offset;
};

//========================================
// Handle löschen
//========================================
func void clear(var int h) {
    if (!Hlp_IsValidHandle(h)) { return; };
    var int a;
    a = MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2);
    MEM_Free(a);
    MEM_WriteIntArray(HandlesObj.array, (h - 1) * 2, 0);
};

//========================================
// Handle mit Destruktor löschen
//========================================
func void delete(var int h) {
    if (!Hlp_IsValidHandle(h)) { return; };
    var int inst; inst = MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2 + 1);
    var zCPar_Symbol symbCls; symbCls = _PM_ToClass(inst);
    var int fnc; fnc = MEM_FindParserSymbol(ConcatStrings(symbCls.name, "_DELETE"));
    if(fnc != -1) {
        var int ptr; ptr = MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2);
        Locals_Push(delete);
        MEM_PtrToInst(ptr);
        MEM_CallByID(fnc);
        Locals_Pop(delete);
    };
    clear(h);
};

//========================================
// Pointer mit Destruktor löschen
//========================================
func void free(var int h, var int inst) {
    if (!h) { return; };
    var zCPar_Symbol symbCls; symbCls = _PM_ToClass(inst);
    var int fnc; fnc = MEM_FindParserSymbol(ConcatStrings(symbCls.name, "_DELETE"));
    if(fnc != -1) {
        h;
        MEM_PtrToInst(h);
        MEM_CallByID(fnc);
        h = MEMINT_StackPopInt();
    };
    MEM_Free(h);
};

//========================================
// Speicher reservieren.
//========================================
func int create(var int inst) {
    var zCPar_Symbol symbCls;
    //Symbol der Klasse holen
    symbCls = _PM_ToClass(inst);

    //Speicher gemäß der Größe eines Objekts der Klasse holen
    var int ptr; ptr = MEM_Alloc(symbCls.offset);
    var int i; i = zCParser_CreateInstance(inst, ptr);
    return ptr;
};

//========================================
// Neues Handle anlegen
//========================================
func int new(var int inst) {
    var int h; var int ptr;

    if (!Handles) {
        //Falls das Array nicht existiert neu anlegen.
        Handles = MEM_ArrayCreate();
        HandlesObj = MEM_PtrToInst(Handles);
    };

    //ein freies Handle suchen, bei ValidHandle - 1 = 0 zu suchen beginnen
    h = 0;
    ptr = MEM_StackPos.position;
    //begin
    //Falls Handle - 1 im Array liegt
    if (h < HandlesObj.numInArray / 2)
    //und der Pointer zum Handle != 0 ist
    && (MEM_ReadIntArray(HandlesObj.array, h * 2)) {
        //nächstes Handle überprüfen
        h += 1;
        MEM_StackPos.position = ptr; //continue
    };
    //end

    ptr = create(inst);

    if (h < HandlesObj.numInArray / 2) {
        //alte Werte überschreiben
        MEM_WriteIntArray(HandlesObj.array, h * 2, ptr);
        MEM_WriteIntArray(HandlesObj.array, h * 2 + 1, inst);
    }
    else {
        //oder Array erweitern
        MEM_ArrayInsert(Handles, ptr);
        MEM_ArrayInsert(Handles, inst);
    };

    return h + 1; //das erste ValidHandle heißt 1
};

//========================================
// Handle als Instanz holen
//========================================
func MEMINT_HelperClass get(var int h) {
    if(Hlp_IsValidHandle(h)) {
        MEM_PtrToInst(MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2));
        return;
    };
    MEM_Error(ConcatStrings("Tried to 'get' invalid handle ", IntToString(h)));
    MEMINT_StackPushInst(MEMINT_INSTUNASSIGNED);
};

//========================================
// Handle als Pointer holen
//========================================
func int getPtr(var int h) {
    if (Hlp_IsValidHandle(h)) {
        return MEM_ReadIntArray(HandlesObj.array, (h - 1) * 2);
    };
    return false;
};

//========================================
// [intern] Typ & Arrays
//========================================
var int _PM_GVT_Indices;
// L: Der Einfachheit halber nehme ich diese Funktion... Könnte man in Ikarus einbauen oder so, keine Ahnung... Ist aber auch nur ein simpler getter, der dafür aber Arrays beachtet.
func int PM_GetVarType(var int symbId) {
    var zCPar_Symbol symb; symb = MEM_PtrToInst(MEM_ReadIntArray (currSymbolTableAddress, symbId));
    _PM_GVT_Indices = symb.bitfield & zCPar_Symbol_bitfield_ele;
    return (symb.bitfield & zCPar_Symbol_bitfield_type);
};

//========================================
// Archiverfuncs
//========================================
func int _PM_Archive_Sub(var string className) {
    var int ptr; ptr = MEM_ArrayPop(_PM_ArrayElements);
    className = STR_Upper(className);
    if((!STR_Compare(className, "INT"))||(!STR_Compare(className, "FLOAT"))||(!STR_Compare(className, "FUNC"))) {
        BW_Int(MEM_ReadInt(ptr));
        ptr += 4;
        MEM_ArrayPush(_PM_ArrayElements, ptr);
        return 1;
    }
    else if(!STR_Compare(className, "STRING")) {
        BW_String(MEM_ReadString(ptr));
        ptr += 20;
        MEM_ArrayPush(_PM_ArrayElements, ptr);
        return 1;
    };

    var int struct_symb; struct_symb = MEM_FindParserSymbol(ConcatStrings(className, "_STRUCT"));

    var int i;
    var int p;
    var zCPar_Symbol symb;

    if(struct_symb != -1) { // Mithilfe der User-Struct die Klasse sichern
        symb = MEM_PtrToInst(MEM_ReadIntArray(currSymbolTableAddress, struct_symb));
        var string struct; struct = MEM_ReadString(strcpy(symb.content));
        var int o; o = STR_SplitCount(struct, " ");
        i = 0;
        p = MEM_StackPos.position;
        if(i < o) {
            var string curr; curr = STR_Split(struct, " ", i);
            var string nextClass; nextClass = STR_Split(curr, "|", 0);
            var int count;
            if(STR_SplitCount(curr, "|") > 1) {
                count = STR_ToInt(STR_Split(curr, "|", 1));
            }
            else {
                count = 1;
            };
            var int pointer;
            if(STR_GetCharAt(nextClass, STR_Len(nextClass)-1) == 42) { //*
                pointer = 1;
                nextClass = STR_SubStr(nextClass, 0, STR_Len(nextClass)-1);
                var int IsPointer; IsPointer = (MEM_ReadInt(ptr) != 0);
                if(!IsPointer) {
                    BW_Byte(0);
                    ptr += 4;
                    i += 1;
                    MEM_StackPos.position = p;
                };
                BW_Byte(1);
            }
            else {
                pointer = 0;
            };
            var int p2; p2 = MEM_StackPos.position;
            if(count) {
                MEM_ArrayPush(_PM_ArrayElements, ptr);
                if(pointer) {
                    ptr = MEM_ReadInt(ptr);
                    MEM_ArrayPush(_PM_ArrayElements, ptr);
                };
                Locals_Push(_PM_Archive_Sub); // G: Da Daedalus bei lokalen Variablen total versagt muss ich sie mir auf nem eigenen Stack sichern..
                                              // G: Hab dafür jetzt ein Paket geschrieben. Alle einzeln zu pushen war mir zu blöd.
                if(!_PM_Archive_Sub(nextClass)) {
                    MEM_Error(ConcatStrings("PermMem: Error during Archive of ", nextClass));
                    return 0;
                };
                Locals_Pop(_PM_Archive_Sub);
                ptr = MEM_ArrayPop(_PM_ArrayElements);
                if(pointer) {
                    ptr = MEM_ArrayPop(_PM_ArrayElements);
                    ptr += 4;
                };
                count -= 1;
                MEM_StackPos.position = p2;
            };
            i += 1;
            MEM_StackPos.position = p;
        };
        MEM_ArrayPush(_PM_ArrayElements, ptr);
        return 1;
    };

    // Mit Archiver-Func:
    struct_symb = MEM_FindParserSymbol(ConcatStrings(className, "_ARCHIVER"));

    if(struct_symb != -1) {
        symb = MEM_PtrToInst(MEM_ReadIntArray(currSymbolTableAddress, struct_symb));
        var zCPar_Symbol symbInst; symbInst = MEM_PtrToInst(MEM_ReadIntArray (currSymbolTableAddress, _PM_inst));
        symbInst.offset = +ptr;
        MEM_PushInstParam(_PM_Inst);
        MEM_CallById(struct_symb);
        symbInst = MEM_PtrToInst(MEM_GetParserSymbol(className));
        ptr += symbInst.offset; // ptr += sizeof(className);
        MEM_ArrayPush(_PM_ArrayElements, ptr);
        return 1;
    };

    // L: Wer bis hier kam, hat keinen archiver, alle Eigenschaften werden als reine Daten interpretiert.
    // L: Desweiteren: Nicht getestet, weil meine LeGo-Umgebung nicht mehr passt... Das wirst du machen müssen, Gottfried.
    // L: Aber ist eigentlich bloß umgebauter Code, der funktioniert hat.
    // Alter Code Anfang
    symb = MEM_PtrToInst(MEM_GetParserSymbol(classname));
    var int offset; offset = 0;
    var int index; index = MEM_FindParserSymbol(classname);
    i = 1;
    var int pos; pos = MEM_StackPos.position;
        if (i > (symb.bitfield & zCPar_Symbol_bitfield_ele)) {
            MEM_ArrayPush(_PM_ArrayElements, ptr);
            return 1;
        };
        var int type; type = PM_GetVarType(index+i);
        if (type == zPAR_TYPE_STRING) {
            _PM_GVT_Indices -= 1;
            var int pos2; pos2 = MEM_StackPos.position;
            MEM_ArrayPush(_PM_ArrayElements, ptr);
            Locals_Push(_PM_Archive_Sub);
            _PM_Archive_Sub("string"); // kA ob das pushen der Locals hier notwendig ist, da nur primitive Datentypen gespeichert werden - mal mit Gottfried reden
            Locals_Pop(_PM_Archive_Sub);
            ptr = MEM_ArrayPop(_PM_ArrayElements);
            if (_PM_GVT_Indices) {
                _PM_GVT_Indices -= 1;
                MEM_StackPos.position = pos2;
            };
        } else {
            _PM_GVT_Indices -= 1;
            pos2 = MEM_StackPos.position;
            BW_Int(MEM_ReadInt(ptr)); // Das kann ich auch selber eben sichern, ist ja nur 'n Int.
            if (_PM_GVT_Indices) {
                _PM_GVT_Indices -= 1;
                ptr += 4;
                MEM_StackPos.position = pos2;
            };
            ptr += 4;
        };
        i += 1;
    MEM_StackPos.position = pos;
};

func void _PM_Archive() {
    BW_Int(HandlesObj.numInArray / 2);

    var int i; i = 0;
    var int p; p = MEM_StackPos.position;
    if(i >= HandlesObj.numInArray / 2) {
        return;
    };

    var int ptr; ptr = MEM_ReadIntArray(HandlesObj.array, i * 2);
    var int inst; inst = MEM_ReadIntArray(HandlesObj.array, i * 2 + 1);

    if(ptr) {
        MEM_Info(ConcatStrings("Save object ", IntToString(i)));
        if(_PM_ArrayElements) {
            MEM_ArrayClear(_PM_ArrayElements);
        }
        else {
            _PM_ArrayElements = MEM_ArrayCreate();
        };

        BW_Int(inst);
        _PM_Inst = inst;

        var zCPar_Symbol symb; symb = _PM_ToClass(inst);

        MEM_ArrayPush(_PM_ArrayElements, ptr);
        if(!_PM_Archive_Sub(symb.name)) {
            return;
        };
    }
    else {
        BW_Int(0);
    };

    i += 1;
    MEM_StackPos.position = p;
};

//========================================
// Unarchiverfuncs
//========================================
func int _PM_UnArchive_Sub(var string className, var int arr) {
    className = STR_Upper(className);
    if((!STR_Compare(className, "INT"))||(!STR_Compare(className, "FLOAT"))||(!STR_Compare(className, "FUNC"))) {
        MEM_ArrayInsert(arr, BR_Int());
        return 1;
    }
    else if(!STR_Compare(className, "STRING")) {
        // G: Geht das so? Evtl. fixxen
        var string buf; buf = BR_String();
        var int ptr; ptr = STR_GetAddress(buf);
        MEM_ArrayInsert(arr, MEM_ReadInt(ptr+ 0));
        MEM_ArrayInsert(arr, MEM_ReadInt(ptr+ 4));
        MEM_ArrayInsert(arr, MEM_ReadInt(ptr+ 8));
        MEM_ArrayInsert(arr, MEM_ReadInt(ptr+12));
        MEM_ArrayInsert(arr, MEM_ReadInt(ptr+16));
        return 1;
    };
    var int struct_symb; struct_symb = MEM_FindParserSymbol(ConcatStrings(className, "_STRUCT"));

    var int i;
    var int p;

    if(struct_symb != -1) { // Mithilfe der User-Struct die Klasse sichern
        var zCPar_Symbol symb; symb = MEM_PtrToInst(MEM_ReadIntArray(currSymbolTableAddress, struct_symb));
        var string struct; struct = MEM_ReadString(symb.content);
        var int o; o = STR_SplitCount(struct, " ");
        i = 0;
        p = MEM_StackPos.position;
        if(i < o) {
            var string curr; curr = STR_Split(struct, " ", i);
            var string nextClass; nextClass = STR_Split(curr, "|", 0);
            var int count;
            if(STR_SplitCount(curr, "|") > 1) {
                count = STR_ToInt(STR_Split(curr, "|", 1));
            }
            else {
                count = 1;
            };
            var int pointer;
            if(STR_GetCharAt(nextClass, STR_Len(nextClass)-1) == 42) { //*
                pointer = 1;
                nextClass = STR_SubStr(nextClass, 0, STR_Len(nextClass)-1);
                var int IsPointer; IsPointer = BR_Byte();
                if(!IsPointer) {
                    MEM_ArrayInsert(arr, 0); // Leerer Pointer in das Array
                    i += 1;
                    MEM_StackPos.position = p;
                };
            }
            else {
                pointer = 0;
            };
            var int p2; p2 = MEM_StackPos.position;
            if(count) {
                if(pointer) {
                    MEM_ArrayPush(_PM_Stack, arr);
                    arr = MEM_ArrayCreate();
                };
                Locals_Push(_PM_UnArchive_Sub); // G: Da Daedalus bei lokalen Variablen total versagt muss ich sie mir auf nem eigenen Stack sichern..
                                                // G: Hab dafür jetzt ein Paket geschrieben. Alle einzeln zu pushen war mir zu blöd.
                if(!_PM_UnArchive_Sub(nextClass, arr)) {
                    MEM_Error(ConcatStrings("PermMem: Error during UnArchive of ", nextClass));
                    return 0;
                };
                Locals_Pop(_PM_UnArchive_Sub);
                if(pointer) {
                    var zCArray zarr; zarr = MEM_PtrToInst(arr);
                    var int narr; narr = MEM_Alloc(zarr.numInArray);
                    MEM_Copy(zarr.array, narr, zarr.numInArray);
                    MEM_ArrayFree(arr);
                    arr = MEM_ArrayPop(_PM_Stack);
                    MEM_ArrayInsert(arr, narr);
                };
                count -= 1;
                MEM_StackPos.position = p2;
            };
            i += 1;
            MEM_StackPos.position = p;
        };
        return 1;
    };

    // Mit Archiver-Func:
    struct_symb = MEM_FindParserSymbol(ConcatStrings(className, "_UNARCHIVER"));

    if(struct_symb != -1) {
        symb = MEM_PtrToInst(MEM_ReadIntArray(currSymbolTableAddress, struct_symb));
        var zCPar_Symbol symbInst;

        symbInst = MEM_PtrToInst(MEM_GetParserSymbol(className));
        var int sizeof_c; sizeof_c = symbInst.offset;
        ptr = MEM_Alloc(sizeof_c);
        symbInst = MEM_PtrToInst(MEM_ReadIntArray (currSymbolTableAddress, _PM_inst));
        symbInst.offset = +ptr;
        MEM_PushInstParam(_PM_Inst);
        MEM_CallById(struct_symb);
        i = 0;
        p = MEM_StackPos.position;
        if(i < sizeof_c) {
            MEM_ArrayInsert(arr, MEM_ReadInt(ptr+i));
            i += 4;
            MEM_StackPos.position = p;
        };
        MEM_Free(ptr);
        return 1;
    };

    // Auto:
	symb = MEM_PtrToInst(MEM_GetParserSymbol(classname));
	var int offset; offset = 0;
	var int index; index = MEM_FindParserSymbol(classname);
	i = 1;
	var int pos; pos = MEM_StackPos.position;
	if (i > (symb.bitfield & zCPar_Symbol_bitfield_ele)) {
		return 1;
	};
	var int type; type = PM_GetVarType(index+i);
	if (type == zPAR_TYPE_STRING) {
		_PM_GVT_Indices -= 1;
		var int pos2; pos2 = MEM_StackPos.position;
		Locals_Push(_PM_Archive_Sub);
		_PM_UnArchive_Sub("string", arr); // kA ob das pushen der Locals hier notwendig ist, da nur primitive Datentypen gespeichert werden - mal mit Gottfried reden
		Locals_Pop(_PM_Archive_Sub);
		if (_PM_GVT_Indices) {
			_PM_GVT_Indices -= 1;
			MEM_StackPos.position = pos2;
		};
	} else {
		_PM_GVT_Indices -= 1;
		pos2 = MEM_StackPos.position;
		MEM_ArrayPush(arr, BR_Int()); // Das kann ich auch selber eben auslesen, ist ja nur 'n Int.
		if (_PM_GVT_Indices) {
			_PM_GVT_Indices -= 1;
			ptr += 4;
			MEM_StackPos.position = pos2;
		};
		ptr += 4;
	};
	i += 1;
	MEM_StackPos.position = pos;
};

func void _PM_UnArchive() {
    var int i;
    var int o;
    var int p;
	
    if(Handles) {
        i = 0; p = MEM_StackPos.position;
        if(i < numHandles()) {
            if(Hlp_IsValidHandle(i)) {
                delete(i);
            };
            MEM_StackPos.position;
        };
        MEM_ArrayFree(Handles);
    };

    Handles = MEM_ArrayCreate();
    HandlesObj = MEM_PtrToInst(Handles);

    i = 1;
    o = BR_Int();
    p = MEM_StackPos.position;
    if(i > o) {
        return;
    };
    var int inst; inst = BR_Int();
    if(inst) {
        if(_PM_ArrayElements) {
            MEM_ArrayClear(_PM_ArrayElements);
        }
        else {
            _PM_ArrayElements = MEM_ArrayCreate();
        };
        if(_PM_Stack) {
            MEM_ArrayClear(_PM_Stack);
        }
        else {
            _PM_Stack = MEM_ArrayCreate();
        };

		var zCPar_Symbol symbInst; symbInst = MEM_PtrToInst(MEM_ReadIntArray(currSymbolTableAddress, inst));
        var zCPar_Symbol symb; symb = _PM_ToClass(inst);
        var int ptr; ptr = MEM_Alloc(symb.offset);

        _PM_Inst = inst;

        MEM_ArrayInsert(Handles, ptr);
        MEM_ArrayInsert(Handles, inst);

        if(!_PM_UnArchive_Sub(symb.name, _PM_ArrayElements)) {
            return;
        };

        symbInst.offset = +ptr;
        MEM_CopyBytes(MEM_ReadInt(_PM_ArrayElements), ptr, symb.offset);
    }
    else {
        MEM_ArrayInsert(Handles, 0);
        MEM_ArrayInsert(Handles, 0);
    };
    i += 1;
    MEM_StackPos.position = p;
};