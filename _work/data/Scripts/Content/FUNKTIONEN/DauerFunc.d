FUNC VOID B_AllMonstersDead()
{
	//WaveCounter += 1;	

	AI_Teleport	(hero, "ANFANG");

	AI_RemoveWeapon (hero);			

	//AI_Teleport	(hero, "ANFANG");

	//PLAYER_MOBSI_PRODUCTION	=	MOBSI_HERO;

	//Mod_InKlassenMenu = TRUE;

	if (hero.level != (WaveCounter))
	{
		B_GivePlayerXP(hero.exp_next - hero.exp);
	};

	//Ai_ProcessInfos (her);
};

var int EndCounter;
var int Ende;
var int Mod_SaveOther;
var C_Npc Mod_SaveNpc;

FUNC VOID DAUERFUNC_01()
{
	var int concatTextInt;
	var string concatText;
	var int XPOS_XPNEEDED;

	if (hero.level == 0)
	{
		hero.exp_next = 100;
	};

	if (Mod_SaveOther == 1)
	&& (!Npc_IsInState(Mod_SaveNpc, ZS_Talk))
	{
		Mod_SaveOther = 0;

		hero.aivar[AIV_INVINCIBLE] = 0;
	};

	if (EndCounter < 3)
	&& (Ende == 1)
	{
		EndCounter += 1;

		if (EndCounter == 3)
		{
			ExitSession();
		};
	};

	if (Mod_Umsehen == TRUE)
	&& (Mod_SaveOther == 0)
	{
		PrintScreen	("Um wieder ins Menü zu kommen drücke 'H' oder 'P'", -1, YPOS_LevelUp-2, FONT_Screen, 2);
	};

	if (hero.attribute[ATR_HITPOINTS] <= 0)
	{
		PrintScreen	("Du hast verloren. Versuch es am besten noch einmal!", -1, YPOS_LevelUp, FONT_Screen, 3);

		B_HighScore();

		EndCounter = 0;

		Ende = 1;
	};

	if (StartSpellEquipped == FALSE)
	&& (Mod_InKlassenMenu == FALSE)
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
	{
		Info_Mod_Hero_EXIT.description = ConcatStrings	("RUNDE ", IntToString(WaveCounter));
	};

	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if ((Mod_Klasse == 0)
	|| (Npc_GetDistToWP(hero, "ANFANG") < 500))
	&& (Mod_InKlassenMenu == FALSE)
	{
		AI_RemoveWeapon (hero);

		PLAYER_MOBSI_PRODUCTION	=	MOBSI_HERO;

		Mod_InKlassenMenu = TRUE;

		AI_ProcessInfos (hero);

		WaveCounter += 1;

		if (WaveCounter > 0)
		{
			Info_Mod_Hero_EXIT.description = ConcatStrings	("RUNDE ", IntToString(WaveCounter));
		};
	};

	if (Npc_GetDistToWP(hero, "ANFANG") > 1000)
	&& (Mod_InKlassenMenu == TRUE)
	{
		Mod_InKlassenMenu = FALSE;
	};

	if (Mod_LevelFertig < WaveCounter)	
	&& (Mod_LevelFertig > 0)
	&& (Mod_InKlassenMenu == FALSE)
	{
		WaveCounter -= 1;
	};

	B_WaffenMuessenWeg();

	if (Mod_Klasse == 3)
	|| (Mod_Klasse == 4)
	{
		if (Npc_HasItems(hero, ItRw_Arrow) < 100)
		&& (HasMagicWeapon == FALSE)
		{
			CreateInvItems	(hero, ItRw_Arrow, 1);
		}
		else if (Npc_HasItems(hero, ItRw_Addon_MagicArrow) < 100)
		&& (HasMagicWeapon == TRUE)
		{
			CreateInvItems	(hero, ItRw_Addon_MagicArrow, 1);

			if (Npc_HasItems(hero, ItRw_Arrow) > 0)
			{
				Npc_RemoveInvItems	(hero, ItRw_Arrow, 100);
			};
		};
	};

	Monster_Alive = 0;

	DoForAll (B_CountMonster);

	if (Mod_InKlassenMenu == FALSE)
	&& (hero.level == WaveCounter)
	{
		if (WaveCounter < 60)
		&& (!Monster_Alive)
		{
			B_AllMonstersDead();
		}
		else if (WaveCounter == 60)
		&& (!Monster_Alive)
		{
			PrintScreen	("Glückwunsch, du hast alle 60 Runden überstanden", -1, YPOS_LevelUp, FONT_Screen, 5);

			B_HighScore();

			Ende = 1;
		};
	};

	if (WaveCounter == hero.level)
	&& (!NPC_GetDistToWP(hero, "ANFANG") < 500)
	&& (Mod_InKlassenMenu == FALSE)
	{
		B_AllMonstersDead();
	};

	if (Mod_InKlassenMenu == TRUE)
	{
		if (!Npc_IsDead(Summoned_Guardian))
		{
			B_KillNpc	(Summoned_Guardian);
		};
		if (!Npc_IsDead(Summoned_Demon))
		{
			B_KillNpc	(Summoned_Demon);
		};
		if (!Npc_IsDead(Summoned_Wolf))
		{
			B_KillNpc	(Summoned_Wolf);
		};
		if (!Npc_IsDead(Summoned_Golem))
		{
			B_KillNpc	(Summoned_Golem);
		};
		if (!Npc_IsDead(Summoned_Gobbo_Skeleton))
		{
			B_KillNpc	(Summoned_Gobbo_Skeleton);
		};
		if (!Npc_IsDead(Summoned_Skeleton))
		{
			B_KillNpc	(Summoned_Skeleton);
		};
		if (!Npc_IsDead(Summoned_Skeleton_Bad))
		{
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
			B_KillNpc	(Summoned_Skeleton_Bad);
		};
	};

	if (C_BodyStateContains(hero, BS_SWIM))
	{
		B_MagicHurtNpc	(hero, hero, hero.attribute[ATR_HITPOINTS_MAX]/10);
	};

	// Perks

	PerkSchleife();

	EXPBalken();

	Wld_SendTrigger	("DAUERTRIGGER");
};