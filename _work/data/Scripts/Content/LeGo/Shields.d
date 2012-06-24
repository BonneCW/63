/***********************************\
               SHIELDS
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *  HookEngine
 *
 * Info:
 *  Wenn dieses Paket aktiviert ist werden Items die als flag ITEM_SHIELD besitzen auch als solche behandelt.
 *  Sie werden automatisch an- und abgelegt und der protection-Wert wird auf den des tragenden Npc addiert.
 *
 * Inhalt:
 *  string MEM_GetAnyWP()
 *     return: Ein beliebiger Waypoint innerhalb der aktuellen Welt
 *
 *  void MEM_InsertItem(c_item itm, int fX, int fY, int fZ)
 *     Setzt 'itm' an den Koordinaten fX|fY|fZ in die Welt
 *     itm   : Item das in die Welt gesetzt werden soll
 *     fX    : X-Koordinate (float!)
 *     fY    : Y-Koordinate (float!)
 *     fZ    : Z-Koordinate (float!)
 *
 *  int oCNpc_PutInSlot(c_npc slf, string SlotName, int oCVobPtr, int SlotID)
 *     Verpackter Enginecall. Hängt das oCVob "oCVobPtr" an den Slot "SlotName" des Models von "slf"
 *     slf      : Npc
 *     SlotName : Name des Slots: "ZS_LONGSWORD", "ZS_RIGHTHAND" usw.
 *     oCVobPtr : Pointer auf ein gültiges oCVob (oder zCVob, es macht keinen Unterschied)
 *     SlotID   : ID an der das Item angebracht wird. Jeder Slot kann an einer bestimmten ID nur ein Objekt beinhalten
 *     return   : Handle (für das neue Objekt am Körper des Npc?)
 *
 *  void oCNpc_RemoveFromSlot(c_npc slf, string SlotName, int retVal, int SlotID)
 *     Verpackter Enginecall. Entfernt ein oCVob von dem Slot "SlotName" des Models von "slf"
 *     slf      : Npc
 *     SlotName : Name des Slots: "ZS_LONGSWORD", "ZS_RIGHTHAND" usw.
 *     retVal   : Handle von oCNpc_PutInSlot
 *     SlotID   : ID an der das Item angebracht wird. Jeder Slot kann an einer bestimmten ID nur ein Objekt beinhalten
 *
 *  void oCNpc_UnequipItem(c_npc slf, int oCItemPtr)
 *     Verpackter Enginecall. Legt das Item "oCItemPtr" direkt ab (Ohne AI-Queue)
 *     slf       : Npc
 *     oCItemPtr : Item
 *
 *  void Shield_Unequip(c_npc slf)
 *     Wenn "slf" ein Schild angelegt hat wird es entfernt
 *     slf   : Npc
 *
 * Um die Schilde verwenden zu können muss LeGo_Init mit dem Flag LeGo_Shields aufgerufen werden.
 *
 * Der Dank gilt hier natürlich Zaphod, der mit Gottfried zusammen die Idee der Schilde ausgearbeitet hat!
 * (Letztendlich ist dies nur eine scriptseitige Revision der von Zaphod veröffentlichten animationsbasierten Idee)
 */

//========================================
// Beliebigen Waypoint holen
//========================================
func string MEM_GetAnyWP() {
    var zCWaynet wayNet; wayNet = MEM_PtrToInst(MEM_World.wayNet);
    var zCWaypoint wp;   wp = MEM_PtrToInst(MEM_ReadInt(wayNet.wplist_next+4));
    return wp.name;
};

//========================================
// Item an Koordinaten einfügen
//========================================
func void MEM_InsertItem(var c_item itm, var int fX, var int fY, var int fZ) {
    var zCWaynet wayNet; wayNet = MEM_PtrToInst(MEM_World.wayNet);
    var zCWaypoint wp; wp = MEM_PtrToInst(MEM_ReadInt(wayNet.wplist_next+4));
    var int x; x = wp.pos[0];
    var int y; y = wp.pos[1];
    var int z; z = wp.pos[2];
    wp.pos[0] = fX;
    wp.pos[1] = fY;
    wp.pos[2] = fZ;
    Wld_InsertItem(Hlp_GetInstanceID(itm), wp.name);
    wp.pos[0] = x;
    wp.pos[1] = y;
    wp.pos[2] = z;
};

//========================================
// Vob an Npc hängen
//========================================
func int oCNpc_PutInSlot(var c_npc slf, var string SlotName, var int oCVobPtr, var int SlotID) {
    CALL_IntParam(SlotID);
    CALL_PtrParam(oCVobPtr);
    CALL_zStringPtrParam(SlotName);
    CALL__thiscall(MEM_InstToPtr(slf), oCNpc__PutInSlot);
    return CALL_RetValAsInt();
};

//========================================
// Vob von Npc entfernen
//========================================
func void oCNpc_RemoveFromSlot(var c_npc slf, var string SlotName, var int retVal, var int SlotID) {
    CALL_IntParam(SlotID);
    CALL_IntParam(retVal);
    CALL_zStringPtrParam(SlotName);
    CALL__thiscall(MEM_InstToPtr(slf), oCNpc__RemoveFromSlot);
};

//========================================
// Item ablegen
//========================================
func void oCNpc_UnequipItem(var c_npc slf, var int oCItemPtr) {
    CALL_PtrParam(oCItemPtr);
    CALL__thiscall(MEM_InstToPtr(slf), oCNpc__UnequipItem);
};

//========================================
// Userkonstanten
//========================================
const int    Shield_AIVar0    = 97;             // Eine freie AI-Var
const int    Shield_AIVar1    = 98;             // Eine weitere freie AI-Var
const int    Shield_AIVar2    = 99;             // Und noch eine freie AI-Var  |  Bei Gelegenheit wird das durch ein weiteres Savegame ersetzt.
const string Shield_WP        = "TOT";          // Irgendein Waypoint der in jeder Welt existiert (TOT zB.)

const string Shield_SlotEquip = "ZS_LONGSWORD"; // Wohin wenn das Schild equipped wird?
const string Shield_SlotDrawn = "ZS_LEFTHAND";  // Wohin wenn das Schild gezogen wird?
const int    Shield_Slot      = 4;              // Genutzter Model-Slot

//========================================
// Schild ablegen
//========================================
func void Shield_Unequip(var c_npc slf) {
    if(!slf.aivar[Shield_AIVar0]) { return; };
    oCNpc_UnequipItem(slf, slf.aivar[Shield_AIVar1]);
};

//========================================
// [intern] Wenn Schild angelegt wird
//========================================
func void _EVT_Shield_Equip() {
    if(!ECX||!ESP) { return; };
    var int shieldPtr; shieldPtr = MEM_ReadInt(ESP+4);
    if(!shieldPtr) { return; };
    var c_item shield; shield = MEM_PtrToInst(shieldPtr);
    if(!(shield.flags&ITEM_SHIELD)) { return; };
    var c_npc slf; slf = MEM_PtrToInst(ECX);
    slf.protection[0] += shield.protection[0];
    slf.protection[1] += shield.protection[1];
    slf.protection[2] += shield.protection[2];
    slf.protection[3] += shield.protection[3];
    slf.protection[4] += shield.protection[4];
    slf.protection[5] += shield.protection[5];
    slf.protection[6] += shield.protection[6];
    slf.protection[7] += shield.protection[7];
    var int vobPtr; vobPtr = MEM_InsertVob(shield.visual, MEM_GetAnyWP()); // Nun hat diese Funktion doch noch einen Nutzen ;)
    slf.aivar[Shield_AIVar0] = oCNpc_PutInSlot(slf, Shield_SlotEquip, vobPtr, Shield_Slot);
    slf.aivar[Shield_AIVar1] = MEM_InstToPtr(shield);
    slf.aivar[Shield_AIVar2] = 0;
};

//========================================
// [intern] Wenn Schild abgelegt wird
//========================================
func void _EVT_Shield_Unequip() {
    if(!ECX||!ESP) { return; };
    var int shieldPtr; shieldPtr = MEM_ReadInt(ESP+4);
    if(!shieldPtr) { return; };
    var c_item shield; shield = MEM_PtrToInst(shieldPtr);
    if(!(shield.flags&ITEM_SHIELD)) { return; };
    var c_npc slf; slf = MEM_PtrToInst(ECX);
    if(!slf.aivar[Shield_AIVar0]) { return; };
    slf.protection[0] -= shield.protection[0];
    slf.protection[1] -= shield.protection[1];
    slf.protection[2] -= shield.protection[2];
    slf.protection[3] -= shield.protection[3];
    slf.protection[4] -= shield.protection[4];
    slf.protection[5] -= shield.protection[5];
    slf.protection[6] -= shield.protection[6];
    slf.protection[7] -= shield.protection[7];
    var string name;
    if(slf.aivar[Shield_AIVar2]) { name = Shield_SlotDrawn; }
    else                         { name = Shield_SlotEquip; };
    oCNpc_RemoveFromSlot(slf, name, slf.aivar[Shield_AIVar0], Shield_Slot);
    slf.aivar[Shield_AIVar0] = 0;
};

//========================================
// [intern] Schild ziehen
//========================================
func void _Shield_Draw(var c_npc slf) {
    if(slf.aivar[Shield_AIVar2]) { return; };
    oCNpc_RemoveFromSlot(slf, Shield_SlotEquip, slf.aivar[Shield_AIVar0], Shield_Slot);
    var c_item shield; shield = MEM_PtrToInst(slf.aivar[Shield_AIVar1]);
    var int vobPtr;    vobPtr = MEM_InsertVob(shield.visual, MEM_GetAnyWP());
    slf.aivar[Shield_AIVar0] = oCNpc_PutInSlot(slf, Shield_SlotDrawn, vobPtr, Shield_Slot);
    slf.aivar[Shield_AIVar2] = 1;
};

//========================================
// [ntern] Schild wegstecken
//========================================
func void _Shield_Remove(var c_npc slf) {
    if(!slf.aivar[Shield_AIVar2]) { return; };
    oCNpc_RemoveFromSlot(slf, Shield_SlotDrawn, slf.aivar[Shield_AIVar0], Shield_Slot);
    var c_item shield; shield = MEM_PtrToInst(slf.aivar[Shield_AIVar1]);
    var int vobPtr;    vobPtr = MEM_InsertVob(shield.visual, MEM_GetAnyWP());
    slf.aivar[Shield_AIVar0] = oCNpc_PutInSlot(slf, Shield_SlotEquip, vobPtr, Shield_Slot);
    slf.aivar[Shield_AIVar2] = 0;
};

//========================================
// [intern] Wenn Schild angezogen wird
//========================================
func void _EVT_Shield_Draw() {
    if(!ECX) { return; };
    var c_npc slf; slf = MEM_PtrToInst(ECX);
    if(slf.aivar[Shield_AIVar0]) {
        _Shield_Draw(slf);
    };
};

//========================================
// [intern] Wenn Schild weggesteckt wird
//========================================
func void _EVT_Shield_Remove() {
    if(!ECX) { return; };
    var c_npc slf; slf = MEM_PtrToInst(ECX);
    if(slf.aivar[Shield_AIVar0]) {
        _Shield_Remove(slf);
    };
};

//========================================
// [intern] Wenn Schild weggeschmissen wird
//========================================
func void _EVT_Shield_Drop() {
    if(!ECX) { return; };
    var c_npc slf; slf = MEM_PtrToInst(ECX);
    if(slf.aivar[Shield_AIVar0]) {
        var c_item shield; shield = MEM_PtrToInst(slf.aivar[Shield_AIVar1]);
        Shield_Unequip(slf);
        if(Npc_IsInFightMode(slf, FMode_None)) { return; };
        var zCVob npc; npc = MEM_PtrToInst(ECX);
        MEM_InsertItem(shield, npc.trafoObjToWorld[3], npc.trafoObjToWorld[7], npc.trafoObjToWorld[11]);
        Npc_RemoveInvItem(slf, Hlp_GetInstanceID(shield));
    };
};