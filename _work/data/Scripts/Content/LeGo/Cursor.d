/***********************************\
              INTERFACE
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *  FrameFunctions
 *  Interface
 *
 * Info:
 *  Dieses Paket implementiert eine Maus in Gothic
 *
 * Inhalt:
 *  int Cursor_X()
 *     return : X-Koordinate der Maus. 0 == Links
 *
 *  int Cursor_Y()
 *     return : Y-Koordinate der Maus. 0 == Oben
 *
 *  void Cursor_SetXY(int x, int y)
 *     Setzt den Cursor an eine bestimmte Position
 *     x      : X-Koordinate
 *     y      : Y-Koordinate
 *
 *  void Cursor_Show()
 *     Zeigt den Cursor auf dem Bildschirm an
 *
 *  void Cursor_Hide()
 *     Versteckt den Cursor
 *
 * Um den Cursor verwenden zu können muss LeGo_Init mit dem Flag LeGo_Cursor aufgerufen werden
 */

//========================================
// Erscheinungsbild des Cursors
//========================================
const string Cursor_Symbol = "X";                     // Genutzter Buchstabe
const string Cursor_Font   = "FONT_OLD_20_WHITE.TGA"; // Genutzte Schriftart
const int    Cursor_Alpha  = 128;                     // Alpha (0..255; 0 = unsichtbar)

//========================================
// [intern] Position des Cursors
//========================================
func void _Cursor_Pos(var int ptr) {
    CALL_PtrParam(ptr);
    CALL__stdcall(8079628);
};

//========================================
// X-Koordinate
//========================================
func int Cursor_X() {
    var int ptr; ptr = MEM_Alloc(8);
    _Cursor_Pos(ptr);
    var int res; res = MEM_ReadInt(ptr);
    MEM_Free(ptr);
    return res;
};

//========================================
// Y-Koordinate
//========================================
func int Cursor_Y() {
    var int ptr; ptr = MEM_Alloc(8);
    _Cursor_Pos(ptr);
    var int res; res = MEM_ReadInt(ptr+4);
    MEM_Free(ptr);
    return res;
};

//========================================
// Erscheinungsbild des Cursors
//========================================
func void Cursor_SetXY(var int x, var int y) {
    CALL_IntParam(y);
    CALL_IntParam(x);
    CALL__stdcall(8079622);
};

//========================================
// Cursor verstecken
//========================================
var int _Cursor_Hndl;
func void Cursor_Hide() {
    if(!Hlp_IsValidHandle(_Cursor_Hndl)) { return; };
    Print_DeleteText(_Cursor_Hndl);
	_Cursor_Hndl = 0;
    FF_Remove(_Cursor_Loop);
};

//========================================
// Cursor anzeigen
//========================================
func void Cursor_Show() {
	if(Hlp_IsValidHandle(_Cursor_Hndl)) { return; };
	_Cursor_Hndl = Print_Ext(0, 0, Cursor_Symbol, Cursor_Font, RGBA(255,255,255,Cursor_Alpha), -1);
	FF_Apply(_Cursor_Loop);
};

//========================================
// [intern] FF-Loop
//========================================
func void _Cursor_Loop() {
    if(!Hlp_IsValidHandle(_Cursor_Hndl)) { Cursor_Show(); };
    var zCViewText txt; txt = Print_GetText(_Cursor_Hndl);
	const int p = 0;
	if(!p) {
		p = MEM_Alloc(8);
	};
	_Cursor_Pos(p);	
    txt.posx = Print_ToVirtual(MEM_ReadInt(p), PS_X);
    txt.posy = Print_ToVirtual(MEM_ReadInt(p+4), PS_Y);
};











