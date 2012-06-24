FUNC VOID B_OpenLernenMenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_BACK);

	if (Slowmotion_Perk == FALSE)
	|| (Parasit_Perk == FALSE)
	|| (HPReg_Perk == FALSE)
	|| (Orktoeter_Perk == FALSE)
	|| ((ManaReg_Perk == FALSE)
	&& ((Mod_Klasse == 2)
	|| (Mod_Klasse == 5)
	|| (Mod_Klasse == 6)
	|| (Mod_Klasse == 7)))
	|| ((Akrobatik_Perk == FALSE)
	&& ((Mod_Klasse == 3)
	|| (Mod_Klasse == 4)))
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Perks", Info_Mod_Hero_Lernen_Perks);
	};

	if ((Mod_Klasse == 5)
	|| (Mod_Klasse == 6)
	|| (Mod_Klasse == 7))
	&& (Mod_Circle < 6)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Magietalente", Info_Mod_Hero_Lernen_Magietalente);
	};

	if (((Mod_Klasse == 3)
	|| (Mod_Klasse == 4))
	&& (hero.HitChance[NPC_TALENT_BOW] < 100))
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Fernkampftalente", Info_Mod_Hero_Lernen_Fernkampftalente);
	};

	if (((Mod_Klasse == 2)
	|| (Mod_Klasse == 4))
	&& (hero.Hitchance[NPC_TALENT_1H] < 100))
	|| ((Mod_Klasse == 1)
	&& ((hero.HitChance[NPC_TALENT_1H] < 100)
	|| (hero.HitChance[NPC_TALENT_2H] < 100)))
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Nahkampftalente", Info_Mod_Hero_Lernen_Nahkampftalente);
	};

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Attribute", Info_Mod_Hero_Lernen_Attribute);
};

FUNC VOID B_OpenKreisMenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Magietalente_BACK);

	if (hero.lp > 9)
	{
		if (Mod_Circle == 5)
		&& (WaveCounter > 50)
		{
			Info_AddChoice	(Info_Mod_Hero_Lernen, "Kreis 6 (10 Punkte)", Info_Mod_Hero_Lernen_Magietalente_Kreis6);
		};

		if (Mod_Circle == 4)
		&& (WaveCounter > 40)
		{
			Info_AddChoice	(Info_Mod_Hero_Lernen, "Kreis 5 (10 Punkte)", Info_Mod_Hero_Lernen_Magietalente_Kreis5);
		};

		if (Mod_Circle == 3)
		&& (WaveCounter > 30)
		{
			Info_AddChoice	(Info_Mod_Hero_Lernen, "Kreis 4 (10 Punkte)", Info_Mod_Hero_Lernen_Magietalente_Kreis4);
		};

		if (Mod_Circle == 2)
		&& (WaveCounter > 20)
		{
			Info_AddChoice	(Info_Mod_Hero_Lernen, "Kreis 3 (10 Punkte)", Info_Mod_Hero_Lernen_Magietalente_Kreis3);
		};

		if (Mod_Circle == 1)
		&& (WaveCounter > 10)
		{
			Info_AddChoice	(Info_Mod_Hero_Lernen, "Kreis 2 (10 Punkte)", Info_Mod_Hero_Lernen_Magietalente_Kreis2);
		};
	};
};

FUNC VOID B_OpenAttributMenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Attribute_BACK);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Lebensenergie + 20 (5 Punkte)", Info_Mod_Hero_Lernen_Attribute_HP5);

	if (Mod_Klasse == 2)
	|| (Mod_Klasse == 5)
	|| (Mod_Klasse == 6)
	|| (Mod_Klasse == 7)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Mana + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Attribute_Mana5);
	};

	if (Mod_Klasse == 3)
	|| (Mod_Klasse == 4)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Geschick + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Attribute_Geschick5);
	};

	if (Mod_Klasse == 1)
	|| (Mod_Klasse == 2)
	|| (Mod_Klasse == 4)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Stärke + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Attribute_Staerke5);
	};
};

FUNC VOID B_OpenPerkMenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);
	
	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Perks_BACK);

	if (Slowmotion_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Slowmotion (10 Punkte)", Info_Mod_Hero_Lernen_Perks_Slowmotion);
	};
	if (Parasit_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Parasit (10 Punkte)", Info_Mod_Hero_Lernen_Perks_Parasit);
	};
	if (Orktoeter_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Orktöter (10 Punkte)", Info_Mod_Hero_Lernen_Perks_Orktoeter);
	};
	if (ManaReg_Perk == FALSE)
	&& ((Mod_Klasse == 2)
	|| (Mod_Klasse == 5)
	|| (Mod_Klasse == 6)
	|| (Mod_Klasse == 7))
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Manaregeneration (10 Punkte)", Info_Mod_Hero_Lernen_Perks_Manareg);
	};
	if (HPReg_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Lebensenergieregeneration (10 Punkte)", Info_Mod_Hero_Lernen_Perks_HPReg);
	};
	if (Akrobatik_Perk == FALSE)
	&& ((Mod_Klasse == 3)
	|| (Mod_Klasse == 4))
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Akrobatik (10 Punkte)", Info_Mod_Hero_Lernen_Perks_Akrobatik);
	};
};

INSTANCE Info_Mod_Hero_Lernen (C_INFO)
{
	npc		= Ausbilder;
	nr		= 2;
	condition	= Info_Mod_Hero_Lernen_Condition;
	information	= Info_Mod_Hero_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Lernen";
};

FUNC INT Info_Mod_Hero_Lernen_Condition()
{
	if (Mod_Klasse > 0)
	&& (Mod_Levelwahl > 0)
	&& (Mod_Schwierigkeit > 0)
	&& (WaveCounter < 64)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Info()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);
};

FUNC VOID Info_Mod_Hero_Lernen_Perks()
{
	B_OpenPerkMenu();	
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_BACK()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_Slowmotion()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Slowmotion_Perk = TRUE;

		Slowmotiontime_max = 60;
		Slowmotiontime = 60;

		Npc_SetTalentSkill 	(hero, NPC_TALENT_RUNES, 1);
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_Parasit()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Parasit_Perk = TRUE;

		Npc_SetTalentSkill 	(hero, NPC_TALENT_SMITH, 1);
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_Orktoeter()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Orktoeter_Perk = TRUE;

		Npc_SetTalentSkill	(hero, NPC_TALENT_PICKPOCKET, 1);
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_Manareg()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		ManaReg_Perk = TRUE;

		Npc_SetTalentSkill	(hero, NPC_TALENT_FIREMASTER, 1);

		B_CheckManaReg();
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_HPReg()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		HPReg_Perk = TRUE;

		Npc_SetTalentSkill	(hero, NPC_TALENT_REGENERATE, 1);

		B_CheckHPReg();
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Perks_Akrobatik()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Akrobatik_Perk = TRUE;

		Npc_SetTalentSkill 	(hero, NPC_TALENT_ACROBAT, 1);
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenPerkMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente()
{
	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_BACK()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_Kreis6()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 6);

		Mod_Circle = 6;
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_Kreis5()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 5);

		Mod_Circle = 5;
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_Kreis4()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 4);

		Mod_Circle = 4;
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_Kreis3()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 3);

		Mod_Circle = 3;
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Magietalente_Kreis2()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 2);

		Mod_Circle = 2;
	}
	else
	{
		Print	("Nicht genug Punkte!");
	};

	B_OpenKreisMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Fernkampftalente()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Fernkampftalente_BACK);

	if (hero.HitChance[NPC_TALENT_BOW] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Bogenschießen + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Fernkampftalente_Bogen5);
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Fernkampftalente_BACK()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Fernkampftalente_Bogen5()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Fernkampftalente_BACK);

	if (hero.HitChance[NPC_TALENT_BOW] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Bogenschießen + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Fernkampftalente_Bogen5);
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Nahkampftalente()
{
	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Nahkampftalente_BACK);

	if (hero.HitChance[NPC_TALENT_2H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Zweihand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Zweihand5);
	};
	if (hero.HitChance[NPC_TALENT_1H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Einhand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Einhand5);
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Nahkampftalente_BACK()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Nahkampftalente_Zweihand5()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_2H, 5, 100);

	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Nahkampftalente_BACK);

	if (hero.HitChance[NPC_TALENT_2H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Zweihand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Zweihand5);
	};
	if (hero.HitChance[NPC_TALENT_1H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Einhand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Einhand5);
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Nahkampftalente_Einhand5()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_1H, 5, 100);

	Info_ClearChoices	(Info_Mod_Hero_Lernen);

	Info_AddChoice	(Info_Mod_Hero_Lernen, "Zurück", Info_Mod_Hero_Lernen_Nahkampftalente_BACK);

	if (hero.HitChance[NPC_TALENT_2H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Zweihand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Zweihand5);
	};
	if (hero.HitChance[NPC_TALENT_1H] < 100)
	{
		Info_AddChoice	(Info_Mod_Hero_Lernen, "Einhand + 5 (5 Punkte)", Info_Mod_Hero_Lernen_Nahkampftalente_Einhand5);
	};
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute()
{
	B_OpenAttributMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute_BACK()
{
	B_OpenLernenMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute_HP5()
{
	B_TeachAttributePoints	(self, hero, ATR_HITPOINTS_MAX, 20, 20000);

	B_OpenAttributMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute_Mana5()
{
	B_TeachAttributePoints	(self, hero, ATR_MANA_MAX, 5, 2000);

	B_OpenAttributMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute_Geschick5()
{
	B_TeachAttributePoints	(self, hero, ATR_DEXTERITY, 5, 2000);

	B_OpenAttributMenu();
};

FUNC VOID Info_Mod_Hero_Lernen_Attribute_Staerke5()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 5, 2000);

	B_OpenAttributMenu();
};

INSTANCE Info_Mod_Ausbilder_EXIT (C_INFO)
{
	npc		= Ausbilder;
	nr		= 8;
	condition	= Info_Mod_Ausbilder_EXIT_Condition;
	information	= Info_Mod_Ausbilder_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ausbilder_EXIT_Condition()
{
	if (WaveCounter < 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_EXIT_Info()
{
	AI_StopProcessInfos	(hero);
};