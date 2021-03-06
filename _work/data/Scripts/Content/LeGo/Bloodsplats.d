/***********************************\
             BLOODSPLATS
\***********************************/

/* Abh�ngigkeiten:
 *  IKARUS
 *  FLOATPAKET
 *  Interface
 *  FrameFunctions
 *  HookEngine
 *  Random
 *
 * Info:
 *  Wenn dieses Paket aktiviert ist werden rote Blutspritzer auf dem Bildschirm
 *  verteilt wenn der Held Schaden erleidet.
 *
 * Inhalt:
 *  void Bloodsplat(int damage)
 *        Setzt einen Blutspritzer auf den Bildschirm
 *      damage  : Der Schaden (beeinflusst die Gr��e des Flecks)
 *
 *  void Bloodsplats_Rage()
 *      Ziemlich sinnlose Funktion die den gesamten Bildschirm vollschmiert.
 *
 * Um die Bloodsplats verwenden zu k�nnen m�ssen die beigelegten Texturen vorhanden sein. Au�erdem sollte der Vfx "HERO_HURT" (ebenfalls beigelegt) in der VfxInst.d eingetragen sein um einen noch besseren Treffer-Effekt zu erzeugen.
 *
 * Um die Bloodsplats automatisch bei Schaden den der Held erh�lt zu aktivieren muss LeGo_Init mit dem Flag LeGo_Bloodsplats aufgerufen werden.
 * Um den Effekt zu verbessern sollte der VisualFx Hero_Hurt aktiviert werden. (Zu finden in Resources/Scripts/System/VisualFx/Hero_Hurt.d)
 * Alle hier verwendeten Texturen stammen von CGTextures.com. Falls die Bloodsplats benutzt werden muss diese Seite in den Credits vermerkt werden.
 */

//========================================
// Nutzerkonstanten
//========================================
const int BLOODSPLAT_NUM = 15; // Maximale Anzahl auf dem Screen
const int BLOODSPLAT_TEX = 6;  // Maximale Anzahl an Texturen ( "BLOODSPLAT" + texID + ".TGA" )
const int BLOODSPLAT_DAM = 7;  // Schadensmultiplikator bzgl. der Texturgr��e ( damage * 2^BLOODSPLAT_DAM )

//========================================
// [intern] Variablen
//========================================
const int f2000 = 1157234688; // 2000.0
const int f1000 = 1148846080; // 1000.0
const int f256  = 1132462080; // 256.0
var int Hero_LastHP; //Wird in Bloodsplats_Loop gesetzt.
var int BloodsplatPtr[BLOODSPLAT_num];

//========================================
// [intern] Feien Slot suchen
//========================================
func int _Bloodsplat_GetSlot() {
    var int i; i = 0;
    var int pos; pos = MEM_StackPos.position;
    if(i < BLOODSPLAT_NUM) {
        var int cur; cur = MEM_ReadStatArr(BloodsplatPtr, i);
        if(!Hlp_IsValidHandle(cur)) {
            return i;
        };
        var zCView v; v = View_Get(cur);
        if(!v.timeDialog) {
            return i;
        };
        i += 1;
        MEM_StackPos.position = pos;
    };
    return -1;
};

//========================================
// Spritzer auf den Bildschirm
//========================================
func void Bloodsplat(var int currDam) {
    if(!currDam) {
        return; //Kein Schaden.
    };

    var int nextSlot; nextSlot = _Bloodsplat_GetSlot();
    if(nextSlot == -1) {
        return; //Alles belegt..
    };

    var int ptr; var zCView v;
    var int x; var int y; var int mult;

    var int texSizeX; var int texSizeY;

    Print_GetScreenSize();
    mult = divf(mkf(Print_Screen[PS_X]), mkf(Print_Screen[PS_Y]));

    texSizeX = currDam<<BLOODSPLAT_DAM;
    if(texSizeX > 6144) { texSizeX = 6144; };

    texSizeY = roundf(mulf(mkf(texSizeX), mult));

    if(texSizeX > 3072) {
        // Volltreffer
        x = (r_Max(2)<<13) - (texSizeX>>1);
        y = 1024+r_Max(6144) - (texSizeY>>1);
    }
    else {
        // Norm. Treffer
        x = 1024+r_Max(6144)-(texSizeX>>1);
        y = 1024+r_Max(6144)-(texSizeY>>1);
    };

    ptr = MEM_ReadStatArr(BloodsplatPtr, nextSlot);

    // Nur einmalig konstruieren und dann recyclen
    if(!ptr) {
        ptr = View_Create(x, y, x+texSizeX, y+texSizeY);
        MEM_WriteStatArr(BloodsplatPtr, nextSlot, ptr);
    };

    v = View_Get(ptr);
    v.timeDialog = f2000;
    v.fxOpen  = 0;
    v.fxClose = 0;

    v.alpha = 255;
    v.vposx = x;
    v.vposy = y;
    v.vsizex = texSizeX;
    v.vsizey = texSizeY;

    var string res;
    res = ConcatStrings("BLOODSPLAT", inttostring(r_Max(BLOODSPLAT_TEX)));
    res = ConcatStrings(res, ".TGA");

    View_SetTexture(ptr, res);
    View_Open(ptr);
};

//========================================
// Screen komplett vollpampen
//========================================
func void Bloodsplats_Rage() {
    var int i; i = 0;
    var int pos; pos = MEM_StackPos.position;
    if(i < BLOODSPLAT_NUM) {
        Bloodsplat(100);
        i += 1;
        MEM_StackPos.position = pos;
    };
};

//========================================
// [intern] Perception f�r den Helden
//========================================
func void _B_HeroDamage() {
    var int currDam;
    currDam = Hero_LastHP - hero.attribute[ATR_Hitpoints];
    Bloodsplat(currDam);
    if(currDam) {
        Wld_StopEffect("HERO_HURT");
        Wld_PlayEffect("HERO_HURT", hero, hero, 0, 0, 0, 0);
    };
};

//========================================
// [intern] FrameFunctions
//========================================
func void _Bloodsplats_Loop() {
    Npc_PercEnable(pc_hero, PERC_ASSESSDAMAGE, _B_HeroDamage); //Deaktiviert sich manchmal grundlos, deshalb lieber reinkloppen
    Hero_LastHP = hero.attribute[ATR_Hitpoints];

    var int i; i = 0;
    var int pos; pos = MEM_StackPos.position;
    if(i < BLOODSPLAT_NUM) {
        var int cur; cur = MEM_ReadStatArr(BloodsplatPtr, i);
        if(cur) {
            var zCView v; v = View_Get(cur);
            if(v.timeDialog) {
                if(lf(v.timeDialog, f1000)) {
                    v.alpha = truncf(divf(mulf(v.timeDialog, f256), f1000)); //(v.timeDialog*256)/1000
                };
            };
        };
        i += 1;
        MEM_StackPos.position = pos;
    };
};