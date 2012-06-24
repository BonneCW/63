/*************************************************************************\
|*                                                                       *|
|*           $$\                 $$$$$$\              $$$$$$\            *|
|*           $$ |               $$  __$$\            $$  __$$\           *|
|*           $$ |      $$$$$$\  $$ /  \__| $$$$$$\   \__/  $$ |          *|
|*           $$ |     $$  __$$\ $$ |$$$$\ $$  __$$\   $$$$$$  |          *|
|*           $$ |     $$$$$$$$ |$$ |\_$$ |$$ /  $$ | $$  ____/           *|
|*           $$ |     $$   ____|$$ |  $$ |$$ |  $$ | $$ |                *|
|*           $$$$$$$$\\$$$$$$$\ \$$$$$$  |\$$$$$$  | $$$$$$$$\           *|
|*           \________|\_______| \______/  \______/  \________|          *|
|*                                                                       *|
|*                  Erweitertes Scriptpaket, aufbauend                   *|
|*                              auf Ikarus                               *|
|*                                                                       *|
|*************************************************************************|
|                                                                         |
| ----------------------------------------------------------------------- |
| Information                                                             |
| ----------------------------------------------------------------------- |
| Dieses Scriptpaket benötigt IKARUS und das FLOATPAKET von Sektenspinner |
| Alle Funktionen die ein '_' vor dem eigentlichen Namen tragen sind      |
| interne Funktionen, sprich: Sie sind entweder unzureichend abgesichert  |
| oder funktionieren unter Umständen nur in einem bestimmten Kontext. Sie |
| sollten möglichst nicht verwendet werden. (Im Normalfall gibt es eine   |
| abgesicherte "Verpackung" dazu.)                                        |
|                                                                         |
| ----------------------------------------------------------------------- |
| Table of Contents                                                       |
| ----------------------------------------------------------------------- |
|                                                                         |
| === 1. Werkzeuge ===                                                    |
| 1.1  PermMem                                                            |
|       Sehr mächtiges Paket um mit Klassen/Pointern vollständig arbeiten |
|       zu können. (Normalerweise verfliegen diese spätestens nach einem  |
|       Neustart)                                                         |
| 1.2  HookEngine                                                         |
|       Scriptfunktionen an beliebigen Punkten von Enginefunktionen       |
|       aufrufen                                                          |
| 1.3  AI_Function                                                        |
|       Scriptfunktionen in die AI-Queue von Npcs einreihen               |
| 1.4  FrameFunctions                                                     |
|       Scriptschleifen ohne Trigger                                      |
| 1.5  Interface                                                          |
|       Pixelgenaues Printen von Texten, ua. mit einstellbarer Textfarbe  |
| 1.6  View                                                               |
|       Arbeiten mit Texturen auf dem Bildschirm                          |
| 1.7  Random                                                             |
|       Eine verbesserte Zufallsfunktion                                  |
| 1.8  BinaryMachines                                                     |
|       Lesen und schreiben von Dateien                                   |
| 1.9  Locals                                                             |
|       Daedalus bietet keine lokalen Variablen. Bei rekursiven           |
|       Funktionen kann das zu Problemen führen. Locals erlaubt Variablen |
|       temporär auf einem Pseudo-Stack zu sichern.                       |
| 1.10 List                                                               |
|       Vereinfachter Umgang mit zCList und zCListSort                    |
| 1.11 Int64                                                              |
|       Grundlegende Arithmetik für 64bit Integer                         |
|                                                                         |
| === 2. Anwendungen ===                                                  |
| 2.1  Anim8                                                              |
|       "Animieren" von Werten (Mover ohne Scripte zB.)                   |
| 2.2  Names                                                              |
|       Den Namen eines Npcs erst anzeigen wenn er bekannt ist            |
| 2.3  Dialoggestures                                                     |
|       Emotionen in Dialogen                                             |
| 2.4  Cursor                                                             |
|       Ingame mit der Maus arbeiten                                      |
| 2.5  Bloodsplats                                                        |
|       Blutspritzer auf den Bildschirm                                   |
| 2.6  Trialoge                                                           |
|       Dialoge mit beliebig vielen Npcs und Kamerafahrten                |
| 2.7  Saves                                                              |
|       Eigene Speicherdateien um zB. Strings zu sichern                  |
|       (Ziemlich hinfällig da PermMem Saves vereinfacht verwendet)       |
| 2.8  Shields                                                            |
|       Scriptseitige Methode um Schilde zu verwenden (ALPHA)             |
| 2.9  Focusnames                                                         |
|       Farbige Fokusnamen nach Attitüde des Npcs                         |
|                                                                         |
\*************************************************************************/

/***********************************\
                LEGO
\***********************************/

/* Info:
 *  Ist einfach nur genial :>
 *
 * Inhalt:
 *  void LeGo_Init(int flags)
 *     Initialisiert LeGo mit den angegebenen Bibliotheken
 *     flags   : Die Bibliotheken die zu aktivieren sind. (Benutzung über die folgenden Konstanten)
 *     Beispiel: LeGo_Init(LeGo_HookEngine | LeGo_FrameFunctions); // HookEngine und FrameFunctions
 *               LeGo_Init(LeGo_All & ~LeGo_Focusnames);           // Alle außer Focusnames
 */

const int LeGo_PrintS         = 1<<0;  // Interface.d
const int LeGo_HookEngine     = 1<<1;  // HookEngine.d
const int LeGo_AI_Function    = 1<<2;  // AI_Function.d
const int LeGo_Trialoge       = 1<<2;  // Trialoge.d
const int LeGo_Dialoggestures = 1<<2;  // Dialoggestures.d
const int LeGo_FrameFunctions = 1<<3;  // FrameFunctions.d
const int LeGo_Cursor         = 1<<3;  // Cursor.d
const int LeGo_Focusnames     = 1<<4;  // Focusnames.d
const int LeGo_Random         = 1<<5;  // Random.d
const int LeGo_Bloodsplats    = 1<<6;  // Bloodsplats.d
const int LeGo_Saves          = 1<<7;  // Saves.d
const int LeGo_Shields        = 1<<8;  // Shields.d
const int LeGo_PermMem        = 1<<9;  // PermMemory.d
const int LeGo_Anim8          = 1<<10; // Anim8.d
const int LeGo_View           = 1<<11; // View.d
const int LeGo_Interface      = 1<<12; // Interface.d

const int LeGo_All            = (1<<13)-1; // Sämtliche Bibliotheken

//========================================
// [intern] Variablen
//========================================
const int _LeGo_CallList = 0;
const int _LeGo_Init = 0;
var   int _LeGo_Loaded;

//========================================
// LeGo initialisieren
//========================================
func void LeGo_Init(var int flags) {
    MEM_InitAll();

    _LeGo_Init = flags;
    _LeGo_Flags = flags;

    if (flags & LeGo_PermMem) {
        if(Handles) {
            HandlesObj = MEM_PtrToInst(Handles);
        };
        flags = flags | LeGo_Saves;
    };
    if(_LeGo_Loaded && (flags & LeGo_Saves)) {
        _BR_LoadGame();
    };

    if(_LeGo_CallList) {
        MEM_Info("LeGo_Init: LeGo wurde bereits initialisiert!");
        return;
    };

    _LeGo_CallList = MEM_ArrayCreate();

    if(flags & LeGo_Bloodsplats) {
        flags = flags | LeGo_FrameFunctions | LeGo_HookEngine | LeGo_Random;
        if(!_LeGo_Loaded) {
            FF_Apply(_Bloodsplats_Loop);
        };
    };

    if(flags & LeGo_PrintS) {
        flags = flags | LeGo_AI_Function | LeGo_Anim8 | LeGo_Interface;
    };

    if(flags & LeGo_View) {
        flags = flags | LeGo_PermMem;
    };

    if(flags & LeGo_Anim8) {
        flags = flags | LeGo_FrameFunctions | LeGo_PermMem;
        if(!_LeGo_Loaded) {
            FF_Apply(_Anim8_Loop);
        };
    };

    if(flags & LeGo_Interface) {
        flags = flags | LeGo_PermMem;
    };

    if(flags & LeGo_PermMem) {
        flags = flags | LeGo_Saves;
    };

    if(flags & LeGo_Shields) {
        HookEngine(oCNpc__EV_DrawWeapon,    6, "_EVT_SHIELD_DRAW");
        HookEngine(oCNpc__EV_DrawWeapon1,   5, "_EVT_SHIELD_DRAW");
        HookEngine(oCNpc__EV_RemoveWeapon,  7, "_EVT_SHIELD_REMOVE");
        HookEngine(oCNpc__EV_RemoveWeapon1, 7, "_EVT_SHIELD_REMOVE");
        HookEngine(oCNpc__EquipItem,        7, "_EVT_SHIELD_EQUIP");
        HookEngine(oCNpc__UnequipItem,      6, "_EVT_SHIELD_UNEQUIP");
        HookEngine(oCNpc__DropUnconscious,  7, "_EVT_SHIELD_DROP");
    };

    if(flags & LeGo_Random) {
        r_DefaultInit();
    };

    if(flags & LeGo_Focusnames) {
        HookEngine(oCGame__UpdateStatus, 8, "_FOCUSNAMES");
    };

    if(flags & LeGo_AI_Function) {
        HookEngine(oCNPC__EV_PlayAni, 5, "_AI_FUNCTION_EVENT");
    };

    if(flags & LeGo_FrameFunctions) {
        HookEngine(oCGame__Render, 7, "_FF_LOOP");
    };

    if(flags & LeGo_Saves) {
        flags = flags | LeGo_HookEngine;
        HookEngine(oCSavegameManager__SetAndWriteSavegame, 5, "_BW_SAVEGAME");
    };

    if(flags & LeGo_HookEngine) {
        // Die macht echt viel und braucht echt wenig..
    };

    _LeGo_Loaded = 1;
};



