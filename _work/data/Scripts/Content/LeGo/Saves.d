/***********************************\
                SAVES
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *  BinaryMachines
 *  HookEngine
 *
 * Info:
 *  Bietet zusätzliche Speicherdateien für eigene Informationen wie strings oä.
 *
 * Inhalt:
 *  void BW_Savegame()
 *     Benutzerdefinierte Funktion. Wenn sie aufgerufen wird ist ein Stream zu einer eigenen Speicherdatei vorhanden, diese kann mit den BW_* Funktionen aus den BinaryMachines gefüllt werden.
 *
 *  void BR_Savegame()
 *     Benutzerdefinierte Funktion. Wenn sie aufgerufen wird ist ein Stream zu einer vorher gesicherten eigenen Speicherdatei vorhanden, diese kann mit den BR_* Funktionen aus den BinaryMachines ausgelesen werden.
 *
 * Um die Saves zu aktivieren muss LeGo_Init mit dem Flag LeGo_Saves aufgerufen werden
 */

func void BW_Savegame() {

};

func void BR_Savegame() {

};

//========================================
// [intern] Gibt Pfad zur Speicherdatei zurück
//========================================
func string _BIN_GetSavefilePath(var int slot) {
	var string path;
	var string cmd; cmd = MEM_GetCommandLine();
	var string _BIN_ini;
	if(!STR_len(_BIN_ini)) {
		_BIN_ini = STR_SubStr(cmd, STR_IndexOf(cmd, "-GAME:")+6, 1024);
		_BIN_ini = STR_Split(_BIN_ini, ".", 0);
	};
	path = ConcatStrings("saves_", _BIN_ini);

	if (slot == 0) {
		path = ConcatStrings(path, "/quicksave");
	} else {
		path = ConcatStrings(path, "/savegame");
		path = ConcatStrings(path, IntToString(slot));
	};
	path = ConcatStrings(path, "/SCRPTSAVE.SAV");
	return path;
};

//========================================
// [intern] Speicherslot herausfinden
//========================================
func int _BR_GetSelectedSlot() {
	var CGameManager man; man = MEM_PtrToInst(MEM_ReadInt(MEMINT_gameMan_Pointer_address));
	return MEM_ReadInt(man.menu_load_savegame + 3276);
};

//========================================
// [intern] Ruft BW_Savegame auf
//========================================
func void _BW_SaveGame() {
    if(BW_NewFile(_BIN_GetSavefilePath(MEM_ReadInt(EBP+60)))) {
        BW_Savegame();
		if(_LeGo_Flags & LeGo_PermMem) {
			_PM_Archive();
		};
        BW_Close();
    };
};

//========================================
// [intern] Ruft BR_Savegame auf
//========================================
func void _BR_LoadGame() {
	var int slot; slot = _BR_GetSelectedSlot();
	if(slot == -1) {
		// G: Levelchange. Nicht laden!
		return;
	};
    if(BR_OpenFile(_BIN_GetSavefilePath(slot))) {
        BR_Savegame();
		if(_LeGo_Flags & LeGo_PermMem) {
			_PM_UnArchive();
		};
        BR_Close();
    };
};