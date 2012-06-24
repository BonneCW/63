/***********************************\
               RANDOM
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *
 * Info:
 *  Bietet einen zufälligeren Zufall als Hlp_Random
 *
 * Inhalt:
 *  int r_Next()
 *     Gibt eine Zufallszahl zurück
 *     return : Zufallszahl
 *
 *  int r_Max(int max)
 *     Gibt eine Zufallszahl von 0 bis 'max' zurück
 *     max    : Maximalwert
 *     return : Zufallszahl
 *
 *  int r_MinMax(int min, int max)
 *     Gibt eine Zufallszahl von 'min' bis 'max' zurück
 *     min    : Minimalwert
 *     max    : Maximalwert
 *     return : Zufallszahl
 *
 *  void r_Init(int seed)
 *     Initialisiert den Zufall
 *     seed   : Startwert
 *
 *  void r_DefaultInit()
 *     Initialisiert den Zufall nach der aktuellen Zeit
 *
 * Random kann über LeGo_Init mit dem Flag LeGo_Random initialisiert werden... muss aber nicht.
 * Die Initialisierung kann auch von Hand erfolgen.
 */

//========================================
// Zufallsvariablen
//========================================
var int r_val;

//========================================
// Zufallszahl holen
//========================================
func int r_Next() {
    var int lo; var int hi;
    lo = 16807 * (r_val & 65535);
    hi = 16807 * (r_val >> 16);
    lo += (hi & 32767) << 16;
    lo += hi >> 15;
    if(lo < 0) {
        lo += 2147483647;
    };
    r_val = lo;
    return r_val;
};

func int r_Max(var int max) {
    return r_Next()%(max+1);
};

func int r_MinMax(var int min, var int max) {
    return r_Max(max - min) + min;
};

//========================================
// Zufall initialisieren
//========================================
func void r_Init(var int seed) {
    r_val = seed;
    r_val = r_Next();
    r_val = r_Next();
    r_val = r_Next();
};

func void r_DefaultInit() {
    const int sysGetTimePtr = 5264000; //0x505280;
    CALL__cdecl(sysGetTimePtr);
    r_Init(CALL_RetValAsInt());
};