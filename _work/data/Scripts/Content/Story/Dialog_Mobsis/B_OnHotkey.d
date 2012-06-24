////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Script functions for HOTKEYS (called by the engine)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_SCREEN_MAP
//

func int B_GetBestPlayerMap()
{
		
	return 0;
};

func int B_GetAnyPlayerMap()
{
	

	return 0;
};

func void PLAYER_HOTKEY_SCREEN_MAP()
{
	if (Mod_InKlassenMenu == TRUE)
	|| (Npc_GetDistToWP(hero, "ANFANG") <= 1000)
	{
		AI_RemoveWeapon (hero);

		PLAYER_MOBSI_PRODUCTION	=	MOBSI_HERO;

		Mod_InKlassenMenu = TRUE;

		AI_ProcessInfos (hero);
	};
};

////////////////////////////////////////////////////////////////////////////////
//
//	GAME_LAME_POTION / GAME_LAME_HEAL
//

func void B_LameSchlork ()
{
	Snd_Play ("DRINKBOTTLE");
};

func void PLAYER_HOTKEY_LAME_POTION()
{
	if (Mod_InKlassenMenu == TRUE)
	|| (Npc_GetDistToWP(hero, "ANFANG") <= 1000)
	{
		AI_RemoveWeapon (hero);

		PLAYER_MOBSI_PRODUCTION	=	MOBSI_HERO;

		Mod_InKlassenMenu = TRUE;

		Mod_Umsehen = FALSE;

		AI_ProcessInfos (hero);
	}
	else if (Npc_GetDistToWP(hero, "ANFANG") > 1000)
	&& (BT_on == FALSE)
	&& (SlowMotion_Perk == TRUE)
	{
		if (Npc_IsPlayer(hero))
		{
			if (Slowmotiontime >= 0)
			{
				if (hero.level >=50)
				{
					Wld_PlayEffect("SLOW_MOTION_5", hero, hero, 0, 0, 0, FALSE);

					Slowmotionbonus = 3;
				}
				else if (hero.level >=40)
				{
					Wld_PlayEffect("SLOW_MOTION_5", hero, hero, 0, 0, 0, FALSE);

					Slowmotionbonus = 2;
				}
				else if (hero.level >=30)
				{
					Wld_PlayEffect("SLOW_MOTION_4", hero, hero, 0, 0, 0, FALSE);
				}
				else if (hero.level >=20)
				{
					Wld_PlayEffect("SLOW_MOTION_3", hero, hero, 0, 0, 0, FALSE);
				}
				else if (hero.level >=10)
				{
					Wld_PlayEffect("SLOW_MOTION_2", hero, hero, 0, 0, 0, FALSE);
				}
				else if (hero.level >=0)
				{
					Wld_PlayEffect("SLOW_MOTION_1", hero, hero, 0, 0, 0, FALSE);
				};

				BT_on = TRUE;
			};
		};
	}
	else
	{
		Wld_StopEffect("SLOW_MOTION_1");
		Wld_StopEffect("SLOW_MOTION_2");
		Wld_StopEffect("SLOW_MOTION_3");
		Wld_StopEffect("SLOW_MOTION_4");
		Wld_StopEffect("SLOW_MOTION_5");
		Wld_StopEffect("SLOW_MOTION_6");

		Slowmotionbonus = 0;

		BT_on = FALSE;
	};	
};

func void PLAYER_HOTKEY_LAME_HEAL ()
{
	if (Mod_InKlassenMenu == TRUE)
	|| (Npc_GetDistToWP(hero, "ANFANG") <= 1000)
	{
		AI_RemoveWeapon (hero);

		PLAYER_MOBSI_PRODUCTION	=	MOBSI_HERO;

		Mod_InKlassenMenu = TRUE;

		Mod_Umsehen = FALSE;

		AI_ProcessInfos (hero);
	}
	else if (Npc_GetDistToWP(hero, "ANFANG") > 1000)
	&& ((hero.attribute[ATR_HITPOINTS] / hero.attribute[ATR_HITPOINTS_MAX]) < (hero.attribute[ATR_MANA] / hero.attribute[ATR_MANA_MAX]))
	{
		if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX])
		&& (Npc_HasItems(hero, ItPo_HP) > 0)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS, (hero.attribute[ATR_HITPOINTS_MAX]/2));

			Npc_RemoveInvItems	(hero, ItPo_HP, 1);
		};
	}
	else
	{
		if (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX])
		&& (Npc_HasItems(hero, ItPo_Mana) > 0)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA, (hero.attribute[ATR_MANA_MAX]/2));

			Npc_RemoveInvItems	(hero, ItPo_Mana, 1);
		};
	};
};
