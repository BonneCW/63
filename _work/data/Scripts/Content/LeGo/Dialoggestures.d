/***********************************\
            DIALOGGESTURES
\***********************************/

/* Abh�ngigkeiten:
 *  IKARUS
 *  AI_Function
 *
 * Info:
 *  Dieses Paket kann w�hrend Dialogen die Gestik des Npcs modifizieren
 *  um Emotionen o�. besser hervorzubringen
 *  <<< Ein flei�iger Animierer k�nnte hier Hand anlegen, da gibt es noch viel Potential :) >>>
 *
 * Inhalt:
 *  void DIAG_Apply(c_npc slf, int gesture)
 *     Gibt dem Npc 'slf' einen Overlay der ihn alternative Dialoggesten abspielen l�sst.
 *     slf     : Npc
 *     gesture : Die neuen Gesten. Am Ende eines Dialoges sollte immer DIAG_NORMAL angewendet werden, das setzt die Gesten wieder zur�ck
 *
 * Um dieses Paket nutzen zu k�nnen werden die beigelegten Overlays aus Resources/Anims/Dialoggestures ben�tigt
 *
 * Um die Dialoggestures nutzen zu k�nnen muss LeGo_Init mit dem Flag LeGo_Dialoggestures aufgerufen werden
 */

/* ==== 1-Satz Gesten ==== */
/* ACHTUNG: Diese beinhalten nur eine einzige Geste
 * und sollten deshalb nach einem Satz direkt wieder
 * gewechselt werden */
const int DIAG_GREET_COOL = 0;    // Begr��ung
const int DIAG_GREET_GRD = 1;     // Begr��ung
const int DIAG_GREET_NOV = 2;     // Begr��ung
const int DIAG_NO = 3;            // Abwehrende Geste (Sehr deutlich)
const int DIAG_YES = 4;           // Nicken
const int DIAG_BECAREFUL = 5;     // Vorsichtiges Umsehen (-> Borka)
const int DIAG_GETLOST = 6;       // "Hau ab!" Geste. (Mehr l�cherlich als �berzeugend, wirkt wie "Kusch! Ab!")

/* ==== Komplette Sets ==== */
/* Hier sind immer mindestens 4 Gesten enthalten, diese
 * k�nnen also in einem Gespr�ch auch l�nger verwendet werden */
const int DIAG_ANGRY = 7;         // W�tende Gesten
const int DIAG_NOTSURE = 8;       // Unwissend/Unsicher/Nachdenklich
const int DIAG_NERVOUS = 9;       // Nerv�se Bewegungen (Ein ertappter Dieb zB.)

const int DIAG_MAX = 10;
const int DIAG_NORMAL = DIAG_MAX; // Gesten wieder zur�cksetzen

/* ==== Sammlung der Overlays ==== */
const string DIAG_Overlays[DIAG_MAX] = {
    "HUM_DIA_GREET_COOL.MDS",
    "HUM_DIA_GREET_GRD.MDS",
    "HUM_DIA_GREET_MAG.MDS",
    "HUM_DIA_NO.MDS",
    "HUM_DIA_YES.MDS",
    "HUM_DIA_BECAREFUL.MDS",
    "HUM_DIA_GETLOST.MDS",
    "HUM_DIA_ANGRY.MDS",
    "HUM_DIA_NOTSURE.MDS",
    "HUM_DIA_NERVOUS.MDS"
};

// Danke an Sektenspinner f�r diese "Notl�sung"
func string ReadStringArr(var string name, var int offset) {
    var zCPar_Symbol sym; sym = MEM_PtrToInst(MEM_GetParserSymbol(name));
    MEMINT_StackPushVar(sym.content + offset * sizeof_zString);
};

//========================================
// Dialoggeste setzen
//========================================
func void DIAG_Apply(var c_npc slf, var int gesture) {
    AI_Function_II(slf, _DIAG_Apply, Hlp_GetInstanceID(slf), gesture);
};
func void _DIAG_Apply(var int slfPtr, var int gesture) {
    var c_npc slf; slf = Hlp_GetNpc(slfPtr);
    var int i; i = 0;
    var int p; p = MEM_StackPos.position;
    if(i < DIAG_MAX) {
        var string str; str = ReadStringArr("DIAG_OVERLAYS", i);
        if(i == gesture) {
            Mdl_ApplyOverlayMds(slf, str);
        }
        else {
            Mdl_RemoveOverlayMds(slf, str);
        };
        i += 1;
        MEM_StackPos.position = p;
    };
};






