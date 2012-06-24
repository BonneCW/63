FUNC VOID B_Praxiserfahrung(var C_NPC oth, var C_NPC slf)
{
	/*if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		if (Mod_Stärke_Praxis_Next == 0)
		{
			Mod_Stärke_Praxis_Next = 100;
		};

		if (Mod_Geschick_Praxis_Next == 0)
		{
			Mod_Geschick_Praxis_Next = 100;
		};

		if (Mod_Mana_Praxis_Next == 0)
		{
			Mod_Mana_Praxis_Next = 100;
		};

		if (Mod_Einhand_Praxis_Next == 0)
		{
			Mod_Einhand_Praxis_Next = 100;
		};

		if (Mod_Zweihand_Praxis_Next == 0)
		{
			Mod_Zweihand_Praxis_Next = 100;
		};

		if (Mod_Bogen_Praxis_Next == 0)
		{
			Mod_Bogen_Praxis_Next = 100;
		};

		if (Mod_Armbrust_Praxis_Next == 0)
		{
			Mod_Armbrust_Praxis_Next = 100;
		};

		//if (C_ScHasReadiedNahkampfwaffe())
		if (Npc_IsInFightMode (hero, FMODE_MELEE))
		{
			Mod_Stärke_Praxis += 3;
			
			//PrintScreen	("Nahkampf!", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		}
		//else if (C_ScHasReadiedFernkampfwaffe())
		else if (Npc_IsInFightMode (hero, FMODE_FAR))
		{
			Mod_Geschick_Praxis += 3;
			
			//PrintScreen	("Fernkampf!", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		}
		else if (Npc_IsInFightMode (hero, FMODE_MAGIC))
		{
			Mod_Mana_Praxis += 3;

			//PrintScreen	("Magiekampf!", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		}
		else if (Npc_IsInFightMode (hero, FMODE_FIST))
		{
			Mod_Stärke_Praxis += 5;

			//PrintScreen	("Faustkampf!", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};
				
		if (Mod_Geschick_Praxis >= Mod_Geschick_Praxis_Next)
		{
			Mod_Geschick_Praxis_Level += 1;

			Mod_Geschick_Praxis_Next += Mod_Geschick_Praxis_Level*100;

			hero.attribute[ATR_DEXTERITY] += 1;

			AI_PrintScreen	("+1 Geschick durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Geschick_Praxis = 0;
		};

		if (Mod_Stärke_Praxis >= Mod_Stärke_Praxis_Next)
		{
			Mod_Stärke_Praxis_Level += 1;

			Mod_Stärke_Praxis_Next += Mod_Stärke_Praxis_Level*100;

			hero.attribute[ATR_STRENGTH] += 1;

			AI_PrintScreen	("+1 Stärke durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Stärke_Praxis = 0;
		};

		if (Mod_Mana_Praxis >= Mod_Mana_Praxis_Next)
		{
			Mod_Mana_Praxis_Level = Mod_Mana_Praxis_Level + 1;

			Mod_Mana_Praxis_Next += Mod_Mana_Praxis_Level*100;

			hero.attribute[ATR_MANA_MAX] += 1;

			AI_PrintScreen	("+1 Mana durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Mana_Praxis = 0;
		};

		if (C_ScHasReadiedEinhand())
		{
			Mod_Einhand_Praxis += 2;
		}
		else if (C_ScHasReadiedZweihand())
		{
			Mod_Zweihand_Praxis += 2;
		}
		else if (C_ScHasReadiedBogen())
		{
			Mod_Bogen_Praxis += 2;
		}
		else if (C_ScHasReadiedArmbrust())
		{
			Mod_Armbrust_Praxis += 2;
		};

		if (Mod_Zweihand_Praxis >= Mod_Zweihand_Praxis_Next)
		{
			Mod_Zweihand_Praxis_Level += 1;

			Mod_Zweihand_Praxis_Next += Mod_Zweihand_Praxis_Level*100;

			B_RaiseFightTalent(hero, NPC_TALENT_2H, 1);

			AI_PrintScreen	("+1 Zweihand durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Zweihand_Praxis = 0;
		};

		if (Mod_Einhand_Praxis >= Mod_Einhand_Praxis_Next)
		{
			Mod_Einhand_Praxis_Level += 1;

			Mod_Einhand_Praxis_Next += Mod_Einhand_Praxis_Level*100;

			B_RaiseFightTalent(hero, NPC_TALENT_1H, 1);

			AI_PrintScreen	("+1 Einhand durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Einhand_Praxis = 0;
		};

		if (Mod_Bogen_Praxis >= Mod_Bogen_Praxis_Next)
		{
			Mod_Bogen_Praxis_Level += 1;

			Mod_Bogen_Praxis_Next += Mod_Bogen_Praxis_Level*100;

			B_RaiseFightTalent(hero, NPC_TALENT_BOW, 1);

			AI_PrintScreen	("+1 Bogen durch Praxiserfahrung", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			Mod_Bogen_Praxis = 0;
		};
	};*/
};