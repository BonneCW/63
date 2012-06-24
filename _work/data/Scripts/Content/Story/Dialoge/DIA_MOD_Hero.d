INSTANCE Info_Mod_Hero_LP (C_INFO)
{
	npc		= PC_Hero;
	nr		= 5;
	condition	= Info_Mod_Hero_LP_Condition;
	information	= Info_Mod_Hero_LP_Info;
	permanent	= 1;
	important	= 0;
	description	= "(Punkte abfragen)";
};

FUNC INT Info_Mod_Hero_LP_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (Mod_Klasse > 0)
	&& (Mod_Schwierigkeit > 0)
	&& (WaveCounter < 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_LP_Info()
{
	var string ConcatText;

	ConcatText = ConcatStrings (IntToString(hero.lp), " Punkte übrig");

	PrintScreen (ConcatText, -1, YPOS_LevelUp, FONT_Screen, 2);
};

INSTANCE Info_Mod_Hero_Musik (C_INFO)
{
	npc		= PC_Hero;
	nr		= 5;
	condition	= Info_Mod_Hero_Musik_Condition;
	information	= Info_Mod_Hero_Musik_Info;
	permanent	= 1;
	important	= 0;
	description	= "(Musik starten)";
};

FUNC INT Info_Mod_Hero_Musik_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (Mod_Klasse > 0)
	&& (Mod_Schwierigkeit > 0)
	{
		return 0;
	};
};

FUNC VOID Info_Mod_Hero_Musik_Info()
{
	Snd_Play	("GAMESTART");
};

INSTANCE Info_Mod_Hero_EquipmentRaum (C_INFO)
{
	npc		= PC_Hero;
	nr		= 6;
	condition	= Info_Mod_Hero_EquipmentRaum_Condition;
	information	= Info_Mod_Hero_EquipmentRaum_Info;
	permanent	= 1;
	important	= 0;
	description	= "UMSEHEN";
};

FUNC INT Info_Mod_Hero_EquipmentRaum_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (Mod_Klasse > 0)
	&& (Mod_Levelwahl > 0)
	&& (Mod_Schwierigkeit > 0)
	&& (WaveCounter < 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_EquipmentRaum_Info()
{
	Mod_Umsehen = TRUE;

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Hero_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 7;
	condition	= Info_Mod_Hero_EXIT_Condition;
	information	= Info_Mod_Hero_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= "RUNDE 1";
};

FUNC INT Info_Mod_Hero_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (Mod_Klasse > 0)
	&& (Mod_Levelwahl > 0)
	&& (Mod_Schwierigkeit > 0)
	&& (WaveCounter < 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_EXIT_Info()
{
	AI_StopProcessInfos	(hero);

	var string ConcatText;

	ConcatText = ConcatStrings ("Runde ", IntToString(WaveCounter));
	ConcatText = ConcatStrings (ConcatText, " gestartet");

	Mod_WaveTime_Counter = 0;

	if (StartSpellEquipped == FALSE)
	{
		if (Mod_Klasse == 5)
		{		
			B_ReadySpell_Hero	(SPL_Firebolt, SPL_COST_Firebolt);
		};

		if (Mod_Klasse == 6)
		{		
			B_ReadySpell_Hero	(SPL_Zap, SPL_COST_Zap);
		};

		if (Mod_Klasse == 7)
		{		
			B_ReadySpell_Hero	(SPL_SummonGoblinSkeleton, SPL_COST_SummonGoblinSkeleton);
		};

		StartSpellEquipped = TRUE;
	};

	if (WaveCounter > 0)
	&& (WaveCounter < 61)
	{
		if (Mod_Levelwahl == 1)
		{
			AI_Teleport	(hero, "START");
		}
		else if (Mod_Levelwahl == 2)
		{
			AI_Teleport	(hero, "STRAND");
		}
		else if (Mod_Levelwahl == 3)
		{
			AI_Teleport	(hero, "ARENA");
		}
		else if (Mod_Levelwahl == 4)
		{
			AI_Teleport	(hero, "HOEHLE");
		};
	};

	PrintScreen (ConcatText, -1, YPOS_LevelUp, FONT_Screen, 2);

	Mod_InKlassenMenu = FALSE;

	B_SpawnNextWave	(WaveCounter);

	B_SetMagicDamage();

	Mod_LevelFertig = WaveCounter;

	hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];

	//AI_Teleport	(hero, "START");

	MEM_WriteStatArr(waveArray, Mod_Schwierigkeit-1, MEM_ReadStatArr(waveArray, Mod_Schwierigkeit-1)+1);
};

INSTANCE Info_Mod_Hero_FINISH (C_INFO)
{
	npc		= PC_Hero;
	nr		= 8;
	condition	= Info_Mod_Hero_FINISH_Condition;
	information	= Info_Mod_Hero_FINISH_Info;
	permanent	= 1;
	important	= 0;
	description	= "SPIEL BEENDEN";
};

FUNC INT Info_Mod_Hero_FINISH_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (WaveCounter == 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_FINISH_Info()
{
	AI_StopProcessInfos	(hero);

	ExitSession();
};