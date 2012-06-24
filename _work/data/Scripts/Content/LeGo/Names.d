/***********************************\
                NAMES
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *
 * Info:
 *  Lässt den Namen eines Npc erst "entdecken" bevor er angezeigt wird
 *  (Nicht sonderlich spektakulär)
 *
 * Inhalt:
 *  void SetName(c_npc npc, string name)
 *     Sollte in InitGlobal() gesetzt werden.
 *     npc   : Der Npc der benannt werden soll
 *     name  : Der Name des Npcs
 *
 *  void ShowName(c_npc npc)
 *     Zeigt permanent den von SetName gesetzten Namen über dem Npc an
 *     npc   : Der Npc dessen Name gezeigt werden soll
 *
 * Die Names müssen nicht initialisiert werden
 */

//========================================
// Variablen
//========================================
const int AIV_Name = 89; // Genutzte AI-Var

//========================================
// Namen setzen
//========================================
func void SetName(var int npc, var string nname) {
    var oCNpc slf; slf = Hlp_GetNpc(npc);
    if(slf.aiscriptvars[AIV_Name]) {
        slf.name = nname;
    };
    slf.name_1 = nname;
};

//========================================
// Namen anzeigen
//========================================
func void ShowName(var int npc) {
    var oCNpc slf; slf = Hlp_GetNpc(npc);
    slf.aiscriptvars[AIV_Name] = 1;
    slf.name = slf.name_1;
};