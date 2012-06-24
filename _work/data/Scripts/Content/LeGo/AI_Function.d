/***********************************\
              INTERFACE
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *  HookEngine
 *
 * Info:
 *  Dieses Paket erlaubt es zeitverzögert Funktionen aufzurufen und zwar indem die
 *  Funktionen in die AI-Queue des betreffenden Npc eingereiht werden.
 *  Dies kann gerade bei Cutscenes oder Ähnlichem sehr nützlich sein.
 *
 * Inhalt:
 *  void AI_Function(c_npc slf, func function)
 *     Die Scriptfunktion 'function' wird verzögert aufgerufen: Sie reiht sich in die AI-Queue von slf ein
 *     slf      : Npc
 *     function : Name der Scriptfunktion.
 *
 *  void AI_Function_I (c_npc slf, func function, int    param)
 *  void AI_Function_S (c_npc slf, func function, string param)
 *  void AI_Function_II(c_npc slf, func function, int    param1, int    param2)
 *  void AI_Function_SS(c_npc slf, func function, string param1, string param2)
 *  void AI_Function_IS(c_npc slf, func function, int    param1, string param2)
 *  void AI_Function_SI(c_npc slf, func function, string param1, int    param2)
 *     "Überladungen" von AI_Function, die es erlauben Scriptfunktionen mit Parametern aufzurufen
 *
 * Um AI_Function nutzen zu können muss LeGo_Init mit dem Flag LeGo_AI_Function aufgerufen werden
 */

//========================================
// [intern] Alias zu AI_Function
//========================================
func void _AI_Function(var c_npc slf, var string fnc) {
    if(!_LeGo_Init&LeGo_AI_Function) {
        MEM_Error("LeGo: AI_Function wurde nicht initialisiert!");
        return;
    };

    var string s1; s1 = ConcatStrings("CALL ", fnc);
    AI_PlayAni(slf, s1);
};

//========================================
// Verzögert eine Funktion aufrufen
//========================================
func void AI_Function (var c_npc slf, var func function) {
    _AI_Function(slf, IntToString(MEM_GetFuncID(function)));
};
func void AI_Function_I(var c_npc slf, var func function, var int param) {
    var string s1;
    s1 = ConcatStrings("I ", IntToString(param));
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};
func void AI_Function_II(var c_npc slf, var func function, var int param1, var int param2) {
    var string s1;
    s1 = ConcatStrings("II ", IntToString(param1));
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(param2));
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};
func void AI_Function_S(var c_npc slf, var func function, var string param) {
    var string s1;
    s1 = ConcatStrings("S ", param);
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};
func void AI_Function_SS(var c_npc slf, var func function, var string param1, var string param2) {
    var string s1;
    s1 = ConcatStrings("SS ", param1);
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, param2);
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};
func void AI_Function_SI(var c_npc slf, var func function, var string param1, var int param2) {
    var string s1;
    s1 = ConcatStrings("SI ", param1);
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(param2));
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};
func void AI_Function_IS(var c_npc slf, var func function, var int param1, var string param2) {
    var string s1;
    s1 = ConcatStrings("IS ", IntToString(param1));
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, param2);
    s1 = ConcatStrings(s1, " ");
    s1 = ConcatStrings(s1, IntToString(MEM_GetFuncID(function)));
    _AI_Function(slf, s1);
};

//========================================
// [intern] Enginehook
//========================================
func void _AI_FUNCTION_EVENT() {
    var string s0; var string s1;
    var int i0; var int i1; var int fnc;
    var int ptr; ptr = EBP+88;
    MEMINT_StackPushVar(ptr);
    var string AniName; AniName = MEMINT_PopString();
	if(STR_SplitCount(AniName, " ") < 4) { // call argc args[argc] fnc -> mindestens 4
		return;
	};
    if (Hlp_StrCmp(STR_Split(AniName, " ", 0), "CALL")) {
        // Das eigentliche callen
		var string argc; argc = STR_Split(AniName, " ", 1);
        if (Hlp_StrCmp(argc, "I")) {
            i0 = STR_ToInt(STR_Split(AniName, " ", 2));
            fnc = STR_ToInt(STR_Split(AniName, " ", 3));
            MEMINT_StackPushInt(i0);
        }
        else if (Hlp_StrCmp(argc, "S")) {
            s0 = STR_Split(AniName, " ", 2);
            fnc = STR_ToInt(STR_Split(AniName, " ", 3));
            MEMINT_PushString(s0);
        }
        else if (Hlp_StrCmp(argc, "II")) {
            i0 = STR_ToInt(STR_Split(AniName, " ", 2));
            i1 = STR_ToInt(STR_Split(AniName, " ", 3));
            fnc = STR_ToInt(STR_Split(AniName, " ", 4));
            MEMINT_StackPushInt(i0);
            MEMINT_StackPushInt(i1);
        }
        else if (Hlp_StrCmp(argc, "SS")) {
            s0 = STR_Split(AniName, " ", 2);
            s1 = STR_Split(AniName, " ", 3);
            fnc = STR_ToInt(STR_Split(AniName, " ", 4));
            MEMINT_PushString(s0);
            MEMINT_PushString(s1);
        }
        else if (Hlp_StrCmp(argc, "SI")) {
            s0 = STR_Split(AniName, " ", 2);
            i1 = STR_ToInt(STR_Split(AniName, " ", 3));
            fnc = STR_ToInt(STR_Split(AniName, " ", 4));
            MEMINT_PushString(s0);
            MEMINT_StackPushInt(i1);
        }
        else if (Hlp_StrCmp(argc, "IS")) {
            i0 = STR_ToInt(STR_Split(AniName, " ", 2));
            s1 = STR_Split(AniName, " ", 3);
            fnc = STR_ToInt(STR_Split(AniName, " ", 4));
            MEMINT_StackPushInt(i0);
            MEMINT_PushString(s1);
        }
        else {
            fnc = STR_ToInt(argc);
        };
        MEM_CallByID(fnc);
    };
};

