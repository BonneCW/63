/***********************************\
              INTERFACE
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *  HookEngine
 *  PermMem
 *  AI_Function
 *  FrameFunctions
 *
 * Info:
 *  Bietet sehr viel bessere Funktionen um mit dem 2D-Interface arbeiten zu können
 *
 * Inhalt:
 *  int sysGetTime()
 *     return : Vergangene Zeit seit dem Systemstart
 *
 *  int RGBA(int r, int g, int b, int a)
 *     r      : Roter Farbanteil (0..255)
 *     g      : Grüner Farbanteil (0..255)
 *     b      : Blauer Farbanteil (0..255)
 *     a      : Alpha (0..255; 0 = unsichtbar)
 *     return : Vollständiger zColor
 *
 *  int ChangeAlpha(int zCol, int a)
 *     Überschreibt den Alphawert eines zColors
 *     zCol   : Vollständiger zColor
 *     a      : Neuer Alphawert für den zColor
 *     return : Modifizierter zCol
 *
 *  int GetAlpha(int zCol)
 *     Gibt den Alphawert eines zColors zurück
 *     zCol   : Vollständiger zColor
 *     return : Alphawert von zCol
 *
 *  int Print_CreateText(string font)
 *     Erstellt einen neuen zCViewText auf dem Bildschirm der frei bearbeitet werden kann
 *     font   : Schriftart (wie auch bei Print_Screen)
 *     return : Handle. Nutze Print_GetText um es als zCViewText zu erhalten
 *
 *  zCViewText Print_GetText(int h)
 *     return : zCViewText des Handles h
 *
 *  void Print_DeleteText(int hndl)
 *     Entfernt einen zCViewText vom Bildschirm
 *     hndl   : Handle von Print_CreateText oder Print_Ext
 *
 *  void Print_GetScreenSize()
 *     Schreibt die aktuelle Auflösung in das Array Print_Screen
 *     Print_Screen[PS_X] entspricht der Auflösung in X-Richtung
 *     Print_Screen[PS_Y] entspricht der Auflösung in Y-Richtung
 *
 *  int Print_ToVirtual(int pos, int dim)
 *     Gibt Pixel "pos" als virtuelle Position zurück
 *     pos    : Umzuwandelnde Position
 *     dim    : PS_X oder PS_Y (s. Print_GetScreenSize())
 *     return : pos als virtuelle Position
 *
 *  int Print_ToPixel(int pos, int dim)
 *     Wie Print_ToVirtual, nur in die andere Richtung
 *
 *  int Print_Ext(int x, int y, string text, string font, int color, int time)
 *     Schreibt wie auch das External "PrintScreen" einen Text auf den Bildschirm, allerdings mit mehr Optionen
 *     x      : X-Koordinate auf dem Bildschirm (virtuell: 0..8192)
 *     y      : Y-Koordinate auf dem Bildschirm (virtuell: 0..8192)
 *     text   : Angezeigter Text
 *     color  : zColor, lässt sich über RGBA(r,g,b,a) generieren
 *     time   : Anzeigedauer in Milisekunden (-1 == permanent)
 *     return : Wenn time == -1 wird ein valides Handle zurückgegeben. Ist time != -1 ist der Print nur flüchtig und es wird KEIN HANDLE ZURÜCKGEGEBEN
 *
 *  int Print_ExtPxl(int x, int y, string text, string font, int color, int time)
 *     Alias zu "Print_Ext", allerdings mit Pixelkoordinaten
 *
 *  void PrintS_Ext(string txt, int color)*
 *     Selbe Funktionalität wie das External "Print", nur mit flüssigen Animationen
 *     txt    : Angezeigter Text
 *     color  : zColor, lässt sich über RGBA(r,g,b,a) generieren. Der Alphawert wird ignoriert
 *
 *  void AI_PrintS_Ext(c_npc slf, string txt, int color)*
 *     Abgeleitet von PrintS_Ext, reiht sich allerdings in die AI-Queue von slf ein. Kann zB. in Dialogen verwendet werden um verzögert Text anzuzeigen
 *
 *  void PrintS(string txt)*
 *     Abgeleitet von PrintS_Ext, nur automatisch mit weißer Textfarbe
 *
 *  void AI_PrintS(c_npc slf, string txt)*
 *     Abgeleitet von PrintS, reiht sich allerdings in die AI-Queue von slf ein. Kann zB. in Dialogen verwendet werden um verzögert Text anzuzeigen
 *
 *  Um Interface nutzen zu können muss LeGo_Init mit dem Flag LeGo_Interface aufgerufen werden.
 *  *Um diese Funktion nutzen zu können muss LeGo_Init mit dem Flag LeGo_PrintS aufgerufen werden. Zu diesen Funktionen gibt es modifizierbare Userkonstanten für die Schriftart oä.
 */

//========================================
// Vergangene Zeit seit Systemstart
//========================================
// Danke an Sektenspinner
func int sysGetTime() {
    const int sysGetTimePtr = 5264000; //0x505280;
    CALL__cdecl(sysGetTimePtr);
    return CALL_RetValAsInt();
};

//========================================
// Farbhandling
//========================================
func int RGBA(var int r, var int g, var int b, var int a) {
    return ((r&zCOLOR_CHANNEL)<<zCOLOR_SHIFT_RED)
          |((g&zCOLOR_CHANNEL)<<zCOLOR_SHIFT_GREEN)
          |((b&zCOLOR_CHANNEL)<<zCOLOR_SHIFT_BLUE)
          |((a&zCOLOR_CHANNEL)<<zCOLOR_SHIFT_ALPHA);
};

func int ChangeAlpha(var int zCol, var int a) {
    return ((zCol & ~(zCOLOR_CHANNEL<<zCOLOR_SHIFT_ALPHA)) | ((a&zCOLOR_CHANNEL)<<zCOLOR_SHIFT_ALPHA));
};

func int GetAlpha(var int zCol) {
    return (zCol&(zCOLOR_CHANNEL<<zCOLOR_SHIFT_ALPHA))>>zCOLOR_SHIFT_ALPHA;
};

//========================================
// [intern] Text erstellen (ptr!)
//========================================
func int _Print_CreateText(var string font) {
    PrintScreen("", 0, 0, font, 1);
    var zCView game_text;
    game_text = MEM_PtrToInst(MEM_Game.game_text);
    game_text = MEM_PtrToInst(game_text.next);
    var int node; node = MEM_ReadInt(game_text.textLines_next);
    var zCViewText line; line = MEM_PtrToInst(node);
    line.posx = 0;
    line.posy = 0;
    line.timer = 0;
    line.timed = 0;
    line.color = -1;
    return node;
};

//========================================
// Klasse für PermMem
//========================================
class gCPrint {
    var string fntName;
    var int zCViewTextPtr; // zCViewText*
};

instance gCPrint@(gCPrint);

func void gCPrint_Archiver(var gCPrint p) {
    // G: Struct kann nicht verwendet werden, da ich manuell von der Engine neu bauen lassen muss..
    BW_String(p.fntName);
    BW_Byte(!!p.zCViewTextPtr);
    if(p.zCViewTextPtr) {
        var zCViewText t; t = MEM_PtrToInst(p.zCViewTextPtr);
        BW_String(t.text);
        t.text = "";
        BW_Bytes(p.zCViewTextPtr, 56);
    };
};

func void gCPrint_Unarchiver(var gCPrint p) {
    p.fntName = BR_String();
    if(BR_Byte()) {
        var string nStr; nStr = BR_String();
        var int ptr; ptr = BR_Bytes(56);
        p.zCViewTextPtr = _Print_CreateText(p.fntName);
        var int fontPtr; fontPtr = MEM_ReadInt(p.zCViewTextPtr+22);
        MEM_CopyBytes(ptr, p.zCViewTextPtr, 56);
        MEM_WriteInt(p.zCViewTextPtr+22, fontPtr);
        var zCViewText t; t = MEM_PtrToInst(p.zCViewTextPtr);
        t.text = nStr;
        MEM_Free(ptr);
    };
};

func void gCPrint_Delete(var gCPrint p) {
    var zCViewText line; line = MEM_PtrToInst(p.zCViewTextPtr);
    line.timer = 0;
    line.timed = 1;
};

//========================================
// Text generieren
//========================================
func int Print_CreateText(var string font) {
    var int hndl; hndl = new(gCPrint@);
    var gCPrint p; p = get(hndl);
    p.zCViewTextPtr = _Print_CreateText(font);
    p.fntName = font;
    return hndl;
};

//========================================
// Text als zCViewText erhalten
//========================================
func zCViewText Print_GetText(var int hndl) {
    var gCPrint p; p = get(hndl);
    MEM_PtrToInst(p.zCViewTextPtr);
};

//========================================
// Text löschen
//========================================
func void Print_DeleteText(var int hndl) {
    delete(hndl);
};

//========================================
// Screengröße (in Pixeln)
//========================================
const int PS_X = 0;
const int PS_Y = 1;
var int Print_Screen[2];
func void Print_GetScreenSize() {
    Print_Screen[PS_X] = STR_ToInt(MEM_GetGothOpt("VIDEO", "zVidResFullscreenX"));
    Print_Screen[PS_Y] = STR_ToInt(MEM_GetGothOpt("VIDEO", "zVidResFullscreenY"));
};

//========================================
// Pixel in Virtuelle Koordinaten
//========================================
func int Print_ToVirtual(var int pxl, var int dim) {
    Print_GetScreenSize();
    pxl *= 8192;
    if(dim == PS_X) {
        return pxl / Print_Screen[PS_X];
    };
    return pxl / Print_Screen[PS_Y];
};
func int Print_ToPixel(var int vrt, var int dim) {
    Print_GetScreenSize();
    if(dim == PS_X) {
        vrt *= Print_Screen[PS_X];
    }
    else {
        vrt *= Print_Screen[PS_Y];
    };
    return vrt / 8192;
};

//========================================
// Erweitertes PrintScreen
//========================================
func int Print_Ext(var int x, var int y, var string text, var string font, var int color, var int time) {
    if(time == -1) {
        var int h; h = Print_CreateText(font);
        var gCPrint p; p = get(h);
        var zCViewText line; line = MEM_PtrToInst(p.zCViewTextPtr);
    }
    else {
        h = -1;
        line = MEM_PtrToInst(_Print_CreateText(font));
    };
    line.text = text;
    line.posx = x;
    line.posy = y;
    line.timer = mkf(time);
    line.timed = (time > -1);
    line.color = color;
    line.colored = (color != 0);
    return h;
};

//========================================
// Erweitertes PrintScreen (pixel)
//========================================
func int Print_ExtPxl(var int x, var int y, var string text, var string font, var int color, var int time) {
    Print_Ext(Print_ToVirtual(x, PS_X), Print_ToVirtual(y, PS_Y), text, font, color, time);
};

//========================================
// Neue, weiche Printfunktion
//========================================

// ------ Userkonstanten ------
const int PF_PrintX     = 200;   // X-Koordinate auf dem Screen (0..8192)
const int PF_PrintY     = 4200;  // Minimale Y-Position (0..8192)
const int PF_FadeTime   = 255;   // Zeit zum einblenden/ausblenden der Textzeilen (in ms)
const int PF_MoveYTime  = 400;   // Zeit in der Y bewegt wird. (Oder so.)
const int PF_WaitTime   = 1200;  // Zeit die gewartet wird, bis wieder ausgeblendet wird (in ms)

const string PF_Font    = "FONT_OLD_20_WHITE.TGA"; //Verwendete Schriftart
// ----------------------------

const int PF_TextHeight = 240;

//========================================
// Klasse für PermMem
//========================================
class gCPrintS {
    var int alpha;
    var int y;
    var int ptr;
    var int opos;
    var int gpos;
};

func void gCPrintS_Delete(var gCPrintS g) {
    if(Hlp_IsValidHandle(g.ptr)) {
        Print_DeleteText(g.ptr);
    };
    if(Hlp_IsValidHandle(g.alpha)) {
        Anim8_Delete(g.alpha);
    };
    if(Hlp_IsValidHandle(g.y)) {
        Anim8_Delete(g.y);
    };
};

instance gCPrintS@(gCPrintS);

var int PF_List; // zCList<gCPrintS(h)>(h)
const int PF_ListPtr = 0;
var int PF_CPos;
var int PF_Loop;

//========================================
// Softprint
//========================================
func void PrintS_Ext(var string txt, var int color) {
    // Die geballte Macht von PermMem und Anim8!
    if(!PF_List) {
        PF_List = new(zCList@);
        PF_ListPtr = getPtr(PF_List);
    };

    var int alpha; alpha = Anim8_New(1, false);
    Anim8 (alpha, 255, PF_FadeTime,   A8_Constant);
    Anim8q(alpha, 0,   PF_WaitTime,   A8_Wait);
    Anim8q(alpha, 0,   PF_FadeTime*3, A8_SlowStart);

    var int y; y = Anim8_New(PF_PrintY + PF_TextHeight, false);
    Anim8(y, PF_PrintY, PF_MoveYTime, A8_SlowEnd);

    var int h; h = new(gCPrintS@);
    var gCPrintS p; p = get(h);
    p.alpha = alpha;
    p.y = y;
    p.opos = PF_CPos;
    p.gpos = PF_CPos;
    p.ptr = Print_Ext(PF_PrintX, PF_PrintY + PF_TextHeight, txt, PF_Font, color, -1);
    List_Add(PF_ListPtr, h);
    PF_CPos += 1;
    if(!PF_Loop) {
        PF_Loop = 1;
        FF_Apply(_PrintS_Loop);
    };
};
func void AI_PrintS_Ext(var c_npc slf, var string txt, var int color) {
    AI_Function_SI(slf, PrintS_Ext, txt, color);
};

//========================================
// vereinfachter Softprint
//========================================
func void PrintS(var string txt) {
    PrintS_Ext(txt, RGBA(255,255,255,0));
};
func void AI_PrintS(var c_npc slf, var string txt) {
    AI_Function_S(slf, PrintS, txt);
};

//========================================
// [intern] Softprint-Loop
//========================================
func void _PrintS_Loop() {
    PF_ListPtr = getPtr(PF_List);
    var int i; i = 1;
    var int l; l = PF_ListPtr;
    var int p; p = MEM_StackPos.position;
    l = MEM_ReadInt(l+4); // l = (zCList*)l->next
	var int p0; p0 = MEM_StackPos.position;
    if(l) {
        var int c; c = MEM_ReadInt(l);
        i += 1;
        if(c) {
            if(!Hlp_IsValidHandle(c)) {
                List_Delete(l, i);
            }
            else {
                var gCPrintS g; g = get(c);
                var zCViewText t; t = Print_GetText(g.ptr);
                t.color = ChangeAlpha(t.color, Anim8_Get(g.alpha));
                if(PF_CPos > g.opos) {
                    g.opos = PF_Cpos;
                    Anim8(g.y, PF_PrintY - PF_TextHeight * (PF_Cpos - g.gpos), PF_MoveYTime, A8_SlowEnd);
                };
                t.posY = Anim8_Get(g.y);
                if(Anim8_Empty(g.alpha)) {
                    delete(c);
					l = MEM_ReadInt(l+4);
                    List_Delete(PF_ListPtr, i);
					MEM_StackPos.position = p0;
                };
            };
        };
        MEM_StackPos.position = p;
    };
    if(List_Length(PF_ListPtr) <= 1) {
        PF_Loop = 0;
        PF_CPos = 0;
        FF_Remove(_PrintS_Loop);
    };
};




























