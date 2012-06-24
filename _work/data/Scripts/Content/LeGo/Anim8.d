/***********************************\
                ANIM8
\***********************************/

/* Abhängigkeiten:
    IKARUS
    FLOATPAKET
    PermMem
    FrameFunctions

 * Info:
    Dieses Paket ermöglicht es int oder float Werte über einen bestimmten Zeitraum zu "animieren". Dabei ist es möglich mehrere Befehle aneinander zu reihen und die Art der Bewegung zu setzen.
    Die neue Version von PrintS aus Interface nutzt Anim8. (Beispiele sind in Examples zu finden)

 * Inhalt:
 *  int Anim8_New(int/float initialValue, int isFloat)
        Erstellt ein neues Anim8-Objekt das mit Befehlen gefüllt werden kann
        initialValue : Der Startwert des Objekts von dem ausgegangen wird
        isFloat      : Werden floats oder ints benutzt? (true bedeutet float)
        return       : Ein Handle auf das neue Objekt mit dem andere Anim8-Funktionen gefüttert werden müssen

 *  void Anim_Delete(int handle)
        Löscht ein mit Anim8_New erstelltes Anim8-Objekt
        handle : Handle für ein Anim8-Objekt

 *  int Anim8_Get(int handle)
        Gibt den aktuellen Wert des Objektes zurück
        handle : Handle für ein Anim8-Objekt
        return : Wert des Objektes

 *  void Anim8_Set(int handle, int value)
        Gegenstück zu Anim8_Get
        handle : Handle für ein Anim8-Objekt
        value  : Wert auf den das Objekt gesetzt werden soll

 *  int Anim8_Empty(int handle)
        Gibt an ob das Objekt leer ist, also keine Befehle mehr abzuarbeiten hat
        handle : Handle für ein Anim8-Objekt
        return : Objekt leer? (true bedeutet keine Befehle mehr)

 *  void Anim8(int handle, int target, int span, int interpol)
        Kernstück des Pakets. Gibt dem Objekt einen neuen Befehl den es abzuarbeiten gilt
        handle   : Handle für ein Anim8-Objekt
        target   : Zielwert dieses Befehls. Wenn der Wert des Objekts diesen Wert erreicht hat wird der Befehl als abgeschlossen betrachtet und gelöscht
        span     : Wie viele Milisekunden soll der Befehl andauern?
        interpol : Welche Form der Bewegung soll verwendet werden?
                   Zur Verfügung stehen:
                     A8_Constant  - Konstante Bewegung
                     A8_SlowStart - Langsamer Start, schnelles Ende
                     A8_SlowEnd   - Schneller Start, langsames Ende
                     A8_Wait      - Nichts tun. Dieser Fall ignoriert target

 *  void Anim8q(int handle, int target, int span, int interpol)
        Wie bereits oben erwähnt kann Anim8 auch mehrere Befehle nacheinander abarbeiten. Während Anim8 das Objekt komplett zurücksetzt und alle Befehle löscht, hängt Anim8q nur einen neuen Befehl an die Liste an.

 * Um Anim8 verwenden zu können, muss LeGo_Init mit dem Flag LeGo_Anim8 aufgerufen werden

 */

//========================================
// Nutzerkonstanten
//========================================

// Bewegungsformen
const int A8_Constant     = 1;
const int A8_SlowEnd      = 2;
const int A8_SlowStart    = 3;
const int A8_Wait         = 4;

//========================================
// [intern] Variablen und Klassen
//========================================
var int A8_Arr; //zCArray(h)<A8Head(h)>

class A8Head {
    var int value;
    var int flt;
    var int last;
    var int queue; //zCList<A8Command(h)>*
};

const string A8Head_Struct = "int|3 zCList*";

func void A8Head_Delete(var A8Head h) {
    if(!h.queue) { return; };
    List_For(h.queue, "A8Head_DeleteSub");
    List_Destroy(h.queue);
    };func void A8Head_DeleteSub(var int node) {
    if(Hlp_IsValidHandle(MEM_ReadInt(node))) {
        delete(MEM_ReadInt(node));
    };
};

instance A8Head@(A8Head) {
    A8Head@.last = MEM_Timer.totalTime;
    A8Head@.queue = List_Create(0);
};

class A8Command {
    var int target;
    var int timeSpan;
    var int startVal;
    var int startTime;
    var int velo;
    var int startV;
    var int interpol;
    var int flt;
};

instance A8Command@(A8Command);

//========================================
// Neues Objekt erstellen
//========================================
func int Anim8_New(var int value, var int IsFloat) {
    if(!A8_Arr) {
        A8_Arr = new(zCArray@);
    };
    var int hndl; hndl = new(A8Head@);
    var A8Head h; h = get(hndl);
    if(!IsFloat) {
        h.value = mkf(value);
    }
    else {
        h.value = value;
    };
    h.flt = !!IsFloat;
    var int i; i = MEM_ArrayOverwriteFirst(getPtr(A8_Arr), 0, hndl);
    return hndl;
};

//========================================
// Objekt komplett löschen
//========================================
func void Anim8_Delete(var int hndl) {
    if(!Hlp_IsValidHandle(hndl)) {
        MEM_Warn("A8_Delete: Invalid handle");
        return;
    };
    var int p; p = MEM_ArrayOverwrite(getPtr(A8_Arr), hndl, 0);
    if(p == -1) {
        MEM_Warn("A8_Delete: Handle not found");
    };
    delete(hndl);
};

//========================================
// [intern] Beschleunigung berechnen
//========================================
func void _Anim8_SetVelo(var A8Head h, var A8Command c) {
    if(c.interpol == A8_Wait) { return; };
    if(c.interpol == A8_Constant) {
        // v = s/t;
        c.velo = divf(subf(c.target, h.value), c.timeSpan);
    }
    else {
        //a = 2*s/t^2
        c.velo = divf(mulf(mkf(2), subf(c.target, h.value)), mulf(c.timeSpan, c.timeSpan));
        if(c.interpol == A8_SlowEnd) {
            c.startV = mulf(c.velo, c.timeSpan);
            c.velo = negf(c.velo);
        };
    };
};

//========================================
// [intern] Neuer Befehl
//========================================
func void _Anim8_Ext(var int hndl, var int targetVal, var int timeSpan, var int interpol, var int UseQueue) {
    var A8Head h; h = get(hndl);
    if(!UseQueue||!h.queue) {
        A8Head_Delete(h);
        h.queue = List_Create(0);
    };
    var int cmd; cmd = new(A8Command@);
    var A8Command c; c = get(cmd);
    c.target = targetVal;
    if(!h.flt) {
        c.target = mkf(c.target);
    };
    c.startVal = h.value;
    c.startTime = MEM_Timer.totalTime;
    c.timeSpan = mkf(timeSpan);
    c.interpol = interpol;
    _Anim8_SetVelo(h, c);
    List_Add(h.queue, cmd);
};

//========================================
// [intern] FF-Loop
//========================================
func void _Anim8_Loop() {
    if(!A8_Arr) { return; };
    var zCArray arr; arr = get(A8_Arr);
    var int i; i = 0;
    var int p; p = MEM_StackPos.position;
    if(i < arr.numInArray) {
        var int chndl; chndl = MEM_ReadInt(arr.array + i*4);
        if(Hlp_IsValidHandle(chndl)) {
            var A8Head h; h = get(chndl);
            h.last = MEM_Timer.totalTime;
            if(h.queue) {
                if(List_Length(h.queue) > 1) {
                    var int ldata; ldata = List_Get(h.queue, 2);
                    var A8Command c; c = get(ldata);

                    // Eigentliche Interpolierung

                    var int t; t = mkf(h.last - c.startTime);

                    if(c.interpol&&c.interpol < A8_Wait) {
                        if(c.interpol == A8_Constant) {
                            // s = v*t;
                            h.value = mulf(c.velo, t);
                        }
                        else if(c.interpol == A8_SlowEnd) {
                            // s = a/2*t^2 + v0*t
                            h.value = addf(mulf(mulf(c.velo, floatHalb), mulf(t, t)), mulf(c.startV, t));
                        }
                        else if(c.interpol == A8_SlowStart) {
                            // s = a/2*t^2
                            h.value = mulf(mulf(c.velo, floatHalb), mulf(t, t));
                        };
                        // Bei Wait passiert logischerweise nichts..

                        h.value = addf(c.startVal, h.value);
                    };
                    if(gef(t, c.timeSpan)) {
                        if(c.interpol != A8_Wait) {
                            h.value = c.target;
                        };
                        delete(ldata);
                        List_Delete(h.queue, 2);
                        // ggf. Liste aktualisieren
                        if(List_Length(h.queue) > 1) {
                            c = get(List_Get(h.queue, 2));
                            c.startVal = h.value;
                            c.startTime = h.last;
                            _Anim8_SetVelo(h, c);
                        };
                    };
                };
            };
        };
        i += 1;
        MEM_StackPos.position = p;
    };
};

//========================================
// Wert eines Objektes holen
//========================================
func int Anim8_Get(var int hndl) {
    if(!Hlp_IsValidHandle(hndl)) {
        return 0;
    };
    var A8Head h; h = get(hndl);
    if(h.flt) {
        return h.value;
    };
    return roundf(h.value);
};

//========================================
// Wert eines Objektes setzen
//========================================
func void Anim8_Set(var int hndl, var int v) {
    if(!Hlp_IsValidHandle(hndl)) {
        return;
    };
    var A8Head h; h = get(hndl);
    h.value = v;
};

//========================================
// Ist das Objekt leer?
//========================================
func int Anim8_Empty(var int hndl) {
    var A8Head h; h = get(hndl);
    if(!h.queue) { return 1; };
    return List_Length(h.queue) <= 1;
};

//========================================
// Neuer Befehl
//========================================
func void Anim8(var int hndl, var int target, var int span, var int interpol) {
    _Anim8_Ext(hndl, target, span, interpol, 0);
};

//========================================
// Neuen Befehl anhängen
//========================================
func void Anim8q(var int hndl, var int target, var int span, var int interpol) {
    _Anim8_Ext(hndl, target, span, interpol, 1);
};














