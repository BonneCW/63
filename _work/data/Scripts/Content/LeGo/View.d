/***********************************\
                VIEW
\***********************************/

/* Abh�ngigkeiten:
    IKARUS
    PermMem
  
 * Info:
    Bietet sehr viel bessere Funktionen um mit dem 2D-Interface arbeiten zu k�nnen
  
 * Inhalt:
 *  int View_Create(int x1, int y1, int x2, int y2)
       Erstellt einen neuen zCView
       x1     : Virtuelle Koordinate (0..8192)
       y1     : Virtuelle Koordinate (0..8192)
       x2     : Virtuelle Koordinate (0..8192)
       y2     : Virtuelle Koordinate (0..8192)
       return : Handle. Kann mit View_Get als zCView geholt werden.
  
 *  int View_CreatePxl(int x1, int y1, int x2, int y2)
       Abgeleitet von View_Create, nur sind die Koordinaten hier nicht virtuell sondern die genauen Pixel
  
 *  zCView View_Get(int handle)
       Gibt den zCView eines handles zur�ck
       handle : Handle von View_Create
       return : Ein zCView der frei bearbeitet werden kann
  
 *  void View_SetTexture(int handle, string tex)
       Weist einem zCView eine Textur zu
       handle : Handle von View_Create
  
 *  void View_Open(int handle)
       Zeigt einen existierenden zCView auf dem Bildschirm an
       handle : Handle von View_Create
  
 *  void View_Close(int handle)
       Entfernt einen ge�ffneten zCView vom Bildschirm (handle ist trotzdem noch g�ltig und verwendbar!)
       handle : Handle von View_Create
  
 *  void View_Delete(int handle)
       L�scht einen View komplett. Handle ist danach ung�ltig
       handle : Handle von View_Create
  
 * Um View nutzen zu k�nnen muss LeGo_Init mit LeGo_View aufgerufen werden.
 */

//========================================
// Klassen f�r PermMem
//========================================
class gCView {
	var string tex;
	var int open;
	var int zCViewPtr; // zCView*
};

instance gCView@(gCView){};

func void gCView_Archiver(var gCView v) {
	BW_String(v.tex);
	BW_Byte(v.open);
	// Alles so reinknallen wie es ist
	if(v.zCViewPtr) {
		BW_Byte(1);
		BW_Bytes(v.zCViewPtr, 256);
	}
	else {
		BW_Byte(0);
	};
};

func void gCView_Unarchiver(var gCView v) {
	v.tex = BR_String();
	v.open = BR_Byte();
	// Das ist etwas anspruchsvoller.
	// Der View muss von der Engine neu erzeugt werden, trotzdem sollen so viele Einstellungen wie m�glich erhalten bleiben.
	// Bei Pointern wird das nicht m�glich sein, deshalb nutze ich die die der Konstruktor reinschmiert.
	if(!BR_Byte()) { return; };
	var int newView; newView = MEM_Alloc(256);
	v.zCViewPtr = BR_Bytes(256);
	CALL_IntParam(2);
	CALL_IntParam(8192);
	CALL_IntParam(8192);
	CALL_IntParam(0);
	CALL_IntParam(0);
	CALL__thiscall(newView, zCView__zCView);
	CALL__thiscall(newView, zCView__Open);
	// Jetzt selektiv r�berkopieren was geht:
	MEM_CopyBytes(v.zCViewPtr +  20, newView +  20, 4 *  6);
	MEM_CopyBytes(v.zCViewPtr +  68, newView +  68, 4 *  8);
	MEM_CopyBytes(v.zCViewPtr + 104, newView + 104, 4 *  7);
	MEM_CopyBytes(v.zCViewPtr + 140, newView + 140, 4 * 25);
	MEM_Free(v.zCViewPtr);
	v.zCViewPtr = newView;
	CALL__thiscall(v.zCViewPtr, zCView__Close);
	if(STR_Len(v.tex)) {
		CALL_zStringPtrParam(v.tex);
		CALL__thiscall(v.zCViewPtr, zCView__InsertBack);
	};
	if(v.open) {
		CALL__thiscall(v.zCViewPtr, zCView__Open);
	};
};

func void gCView_Delete(var gCView v) {
	if(v.zCViewPtr) {
		CALL__thiscall(v.zCViewPtr, zCView__@zCView);
		MEM_Free(v.zCViewPtr);
	};
};

//========================================
// View erzeugen
//========================================
func int View_Create(var int x1, var int y1, var int x2, var int y2) {
	var int hndl; hndl = new(gCView@);
	var gCView v; v = get(hndl);
	v.zCViewPtr = MEM_Alloc(256);
	v.tex = "";
    CALL_IntParam(2);
    CALL_IntParam(y2);
    CALL_IntParam(x2);
    CALL_IntParam(y1);
    CALL_IntParam(x1);
    CALL__thiscall(v.zCViewPtr, zCView__zCView);
    return hndl;
};

//========================================
// View erzeugen (Pixelkoordinaten)
//========================================
func int View_CreatePxl(var int x1, var int y1, var int x2, var int y2) {
    x1 = Print_ToVirtual(x1,PS_X); y1 = Print_ToVirtual(y1,PS_Y);
    x2 = Print_ToVirtual(x2,PS_X); y2 = Print_ToVirtual(y2,PS_Y);
    return View_Create(x1, y1, x2, y2);
};

//========================================
// View eine Textur zuweisen
//========================================
func void View_SetTexture(var int hndl, var string tex) {
	tex = STR_Upper(tex);
	var gCView v; v = get(hndl);
	v.tex = tex;
    CALL_zStringPtrParam(tex);
    CALL__thiscall(v.zCViewPtr, zCView__InsertBack);
};

//========================================
// View anzeigen
//========================================
func void View_Open(var int hndl) {
	var gCView v; v = get(hndl);
	v.open = 1;
    CALL__thiscall(v.zCViewPtr, zCView__Open);
};

//========================================
// View schlie�en
//========================================
func void View_Close(var int hndl) {
	var gCView v; v = get(hndl);
	v.open = 0;
	CALL__thiscall(v.zCViewPtr, zCView__Close);
};

//========================================
// View l�schen
//========================================
func void View_Delete(var int hndl) {
	var gCView v; v = get(hndl);
	gCView_Delete(v);
	delete(hndl);
};

//========================================
// View holen
//========================================
func zCView View_Get(var int hndl) {
	var gCView v; v = get(hndl);
	MEM_PtrToInst(v.zCViewPtr);
};






