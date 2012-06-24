/***********************************\
             FOCUSNAMES
\***********************************/

/* Abh�ngigkeiten:
 *  IKARUS
 *  Interface
 *  HookEngine
 *
 * Info:
 *  F�rbt wenn aktiviert die Fokusnamen der Npcs in entsprechenden Farben.
 *  Betrifft auch Monster.
 *
 * Inhalt:
 *  int Focusnames_Color_xxx()
 *   Farbe zu einer bestimmten Attit�de. Kann beliebig modifiziert werden.
 *   (Der Alphawert kann auch modifiziert werden)
 *   (Mobs/Items erhalten Color_Neutral)
 *
 *
 * Um die Fokusnamen zu aktivieren muss LeGo_Init mit dem Flag LeGo_Focusnames aufgerufen werden
 */

func int Focusnames_Color_Friendly() {
    return RGBA(0,   255, 0,   255); // Gr�n
};

func int Focusnames_Color_Neutral() {
    return RGBA(255, 255, 255, 255); // Wei�
};

func int Focusnames_Color_Angry() {
    return RGBA(255, 180, 0,   255); // Orange
};

func int Focusnames_Color_Hostile() {
    return RGBA(255, 0,   0,   255); // Rot
};


//========================================
// [intern] F�rben der Namen
//========================================
func void _Focusnames() {
    var int col;
    var oCNpc her; her = Hlp_GetNpc(hero);

if(Hlp_Is_oCNpc(her.focus_vob)) {
    var c_npc oth; oth = MEM_PtrToInst(her.focus_vob);
    var int att; att = Npc_GetPermAttitude(hero, oth);
    if     (att == ATT_FRIENDLY) { col = Focusnames_Color_Friendly(); }
    else if(att == ATT_NEUTRAL)  { col = Focusnames_Color_Neutral();  }
    else if(att == ATT_ANGRY)    { col = Focusnames_Color_Angry();    }
    else if(att == ATT_HOSTILE)  { col = Focusnames_Color_Hostile();  };
}
else if(Hlp_Is_oCItem(her.focus_vob)) {
    var c_item itm; itm = MEM_PtrToInst(her.focus_vob);

    // Setze col = RGBA(.., .., .., ..); um die Farbe einzustellen

}
else {
    col = Focusnames_Color_Neutral();
};

    var int ptr; ptr = MEM_Alloc(4);
    MEM_WriteInt(ptr, col);
    CALL_IntParam(ptr);
    CALL__thiscall(MEM_ReadInt(screen_offset), zCView__SetFontColor);
    MEM_Free(ptr);
};