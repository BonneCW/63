INSTANCE Info_Mod_Hero_Start (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= Info_Mod_Hero_Start_Condition;
	information	= Info_Mod_Hero_Start_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klasse wählen";
};

FUNC INT Info_Mod_Hero_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (Mod_Klasse == 0)
	&& (WaveCounter < 64)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_Info()
{
	Info_ClearChoices	(Info_Mod_Hero_Start);

	Info_AddChoice	(Info_Mod_Hero_Start, "Schwarzmagier", Info_Mod_Hero_Start_Schwarzmagier);
	Info_AddChoice	(Info_Mod_Hero_Start, "Wassermagier", Info_Mod_Hero_Start_Wassermagier);
	Info_AddChoice	(Info_Mod_Hero_Start, "Feuermagier", Info_Mod_Hero_Start_Feuermagier);
	Info_AddChoice	(Info_Mod_Hero_Start, "Assassine", Info_Mod_Hero_Start_Assassine);
	Info_AddChoice	(Info_Mod_Hero_Start, "Waldläufer", Info_Mod_Hero_Start_Waldlaeufer);
	Info_AddChoice	(Info_Mod_Hero_Start, "Paladin", Info_Mod_Hero_Start_Paladin);
	Info_AddChoice	(Info_Mod_Hero_Start, "Barbar", Info_Mod_Hero_Start_Barbar);
};

FUNC VOID Info_Mod_Hero_Start_Schwarzmagier()
{
	hero.attribute[ATR_STRENGTH] = 0;
	hero.attribute[ATR_DEXTERITY] = 0;
	hero.attribute[ATR_MANA_MAX] = 50;
	hero.attribute[ATR_MANA] = 50;

	Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 1);

	Mod_Klasse = 7;

	Mod_Circle = 1;

	hero.guild = 7;

	Npc_SetTrueGuild	(hero, 7);

	CreateInvItems	(hero, ITAR_NOV_DMB_01, 1);
	AI_EquipArmor	(hero, ITAR_NOV_DMB_01);

	CreateInvItems	(self, ItPo_Mana, 5);
	CreateInvItems	(self, ItPo_HP, 5);

	CreateInvItems	(hero, ItRu_SumGobSkel, 1);

	PrintScreen ("Klasse gewählt: Schwarzmagier", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Wassermagier()
{
	hero.attribute[ATR_STRENGTH] = 0;
	hero.attribute[ATR_DEXTERITY] = 0;
	hero.attribute[ATR_MANA_MAX] = 80;
	hero.attribute[ATR_MANA] = 80;

	Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 1);

	Mod_Klasse = 6;

	Mod_Circle = 1;

	hero.guild = 6;

	Npc_SetTrueGuild	(hero, 6);

	CreateInvItems	(hero, ItAr_WNov_L, 1);
	AI_EquipArmor	(hero, ItAr_WNov_L);

	CreateInvItems	(self, ItPo_Mana, 5);
	CreateInvItems	(self, ItPo_HP, 5);

	CreateInvItems	(hero, ItRu_Zap, 1);

	PrintScreen ("Klasse gewählt: Wassermagier", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Feuermagier()
{
	hero.attribute[ATR_STRENGTH] = 0;
	hero.attribute[ATR_DEXTERITY] = 0;
	hero.attribute[ATR_MANA_MAX] = 80;
	hero.attribute[ATR_MANA] = 80;

	Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, 1);

	Mod_Klasse = 5;

	Mod_Circle = 1;

	hero.guild = 5;

	Npc_SetTrueGuild	(hero, 5);

	CreateInvItems	(hero, ItAr_Nov_L, 1);
	AI_EquipArmor	(hero, ItAr_Nov_L);

	CreateInvItems	(self, ItPo_Mana, 5);
	CreateInvItems	(self, ItPo_HP, 5);

	CreateInvItems	(hero, ItRu_Firebolt, 1);

	PrintScreen ("Klasse gewählt: Feuermagier", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Assassine()
{
	hero.attribute[ATR_STRENGTH] = 10;
	hero.attribute[ATR_DEXTERITY] = 25;
	hero.attribute[ATR_MANA_MAX] = 1;
	hero.attribute[ATR_MANA] = 1;

	Mod_Klasse = 4;

	hero.guild = 4;

	Npc_SetTrueGuild	(hero, 4);

	CreateInvItems	(hero, ItAr_VLK_L, 1);
	AI_EquipArmor	(hero, ItAr_VLK_L);

	CreateInvItems	(hero, ItMw_1h_Vlk_Sword, 1);
	AI_EquipBestMeleeWeapon	(hero);

	CreateInvItems	(hero, ItRw_Bow_L_02, 1);
	AI_EquipBestRangedWeapon	(hero);

	CreateInvItems	(self, ItPo_HP, 5);

	StrWaffe = 20;
	DexWaffe = 20;

	PrintScreen ("Klasse gewählt: Assassine", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Waldlaeufer()
{
	hero.attribute[ATR_STRENGTH] = 0;
	hero.attribute[ATR_DEXTERITY] = 35;
	hero.attribute[ATR_MANA_MAX] = 1;
	hero.attribute[ATR_MANA] = 1;

	Mod_Klasse = 3;

	hero.guild = 3;

	Npc_SetTrueGuild	(hero, 3);

	CreateInvItems	(hero, ItAr_Leather_L, 1);
	AI_EquipArmor	(hero, ItAr_Leather_L);

	CreateInvItems	(hero, ItRw_Bow_L_03, 1);
	AI_EquipBestRangedWeapon	(hero);

	CreateInvItems	(self, ItPo_HP, 5);

	DexWaffe = 30;

	PrintScreen ("Klasse gewählt: Waldläufer", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Paladin()
{
	hero.attribute[ATR_STRENGTH] = 20;
	hero.attribute[ATR_DEXTERITY] = 0;
	hero.attribute[ATR_MANA_MAX] = 15;
	hero.attribute[ATR_MANA] = 15;

	Mod_Klasse = 2;

	hero.guild = 2;

	Npc_SetTrueGuild	(hero, 2);

	CreateInvItems	(hero, ItAr_Mil_L, 1);
	AI_EquipArmor	(hero, ItAr_Mil_L);

	CreateInvItems	(hero, ItMw_ShortSword3, 1);
	AI_EquipBestMeleeWeapon	(hero);

	CreateInvItems	(self, ItPo_Mana, 5);
	CreateInvItems	(self, ItPo_HP, 5);

	StrWaffe = 20;

	PrintScreen ("Klasse gewählt: Paladin", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

FUNC VOID Info_Mod_Hero_Start_Barbar()
{
	hero.attribute[ATR_STRENGTH] = 35;
	hero.attribute[ATR_DEXTERITY] = 0;
	hero.attribute[ATR_MANA_MAX] = 1;
	hero.attribute[ATR_MANA] = 1;

	Mod_Klasse = 1;

	hero.guild = 1;

	Npc_SetTrueGuild	(hero, 1);

	CreateInvItems	(hero, ItAr_Sld_L, 1);
	AI_EquipArmor	(hero, ItAr_Sld_L);

	CreateInvItems	(hero, ItMw_Richtstab, 1);
	AI_EquipBestMeleeWeapon	(hero);

	CreateInvItems	(self, ItPo_Mana, 5);
	CreateInvItems	(self, ItPo_HP, 5);

	StrWaffe = 35;

	PrintScreen ("Klasse gewählt: Barbar", -1, -1, FONT_ScreenSmall, 2);		

	Info_ClearChoices	(Info_Mod_Hero_Start);
};

INSTANCE Info_Mod_Hero_Levelwahl (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= Info_Mod_Hero_Levelwahl_Condition;
	information	= Info_Mod_Hero_Levelwahl_Info;
	permanent	= 1;
	important	= 0;
	description	= "Level wählen";
};

FUNC INT Info_Mod_Hero_Levelwahl_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (WaveCounter < 64)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Levelwahl_Info()
{
	if (WaveCounter == 0)
	{
		WaveCounter = 1;
	};

	Info_ClearChoices	(Info_Mod_Hero_Levelwahl);

	Info_AddChoice	(Info_Mod_Hero_Levelwahl, "Vulkankrater", Info_Mod_Hero_Levelwahl_Vulkankrater);
	Info_AddChoice	(Info_Mod_Hero_Levelwahl, "Strand", Info_Mod_Hero_Levelwahl_Strand);
	Info_AddChoice	(Info_Mod_Hero_Levelwahl, "Höhle", Info_Mod_Hero_Levelwahl_Hoehle);
	Info_AddChoice	(Info_Mod_Hero_Levelwahl, "Arena", Info_Mod_Hero_Levelwahl_Arena);
};

FUNC VOID Info_Mod_Hero_Levelwahl_Vulkankrater()
{
	Mod_Levelwahl = 1;

	PrintScreen ("Level gewählt: Vulkankrater", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Levelwahl);
};

FUNC VOID Info_Mod_Hero_Levelwahl_Strand()
{
	Mod_Levelwahl = 2;

	PrintScreen ("Level gewählt: Strand", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Levelwahl);
};

FUNC VOID Info_Mod_Hero_Levelwahl_Hoehle()
{
	Mod_Levelwahl = 4;

	PrintScreen ("Level gewählt: Höhle", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Levelwahl);
};

FUNC VOID Info_Mod_Hero_Levelwahl_Arena()
{
	Mod_Levelwahl = 3;

	PrintScreen ("Level gewählt: Arena", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Levelwahl);
};