// *******************************************************************
// Startup und Init Funktionen der Level-zen-files
// -----------------------------------------------
// Die STARTUP-Funktionen werden NUR beim ersten Betreten eines Levels 
// (nach NewGame) aufgerufen, die INIT-Funktionen jedesmal
// Die Funktionen müssen so heissen wie die zen-files
// *******************************************************************

// *********
// GLOBAL
// *********

func void STARTUP_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor STARTUP_<LevelName>)
	Game_InitGerman();
};

func void INIT_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor INIT_<LevelName>)
	Game_InitGerman();

	LeGo_Init(LeGo_PrintS);

	username = MEM_GetGothOpt("CLOCKWORK", "username");
	passwort = MEM_GetGothOpt("CLOCKWORK", "passwort");

	B_ClearArrays();

	Wld_SendTrigger	("FRAMETRIGGER");
	Wld_SendTrigger ("DAUERTRIGGER");
	Wld_SendTrigger ("SEKUNDENTRIGGER");

	MEM_SetShowDebug (1);

	MEM_WriteInt	(game_holdTime_Address, 1);

	FixPlayerControllsTurnOnNpcAttackMoveBug();

	ShowManabar(1);

	if (!Hlp_StrCmp(GOTHIC_RESTART, "Y"))
	{
		HookEngine (4349731, 7, "B_ENDGAME");

		GOTHIC_RESTART = "Y";
	};
};

FUNC VOID OldLevel(var int newlevel)
{
	CurrentLevel2 = newlevel;
};


// *********
// Metzelmod
// *********


func void STARTUP_63 ()
{
	Wld_InsertNpc	(Ausstatter, "AUSSTATTER");
	Wld_InsertNpc	(Ausbilder, "AUSBILDER");
};

func void INIT_63 ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	OldLevel (METZEL_ZEN);
};