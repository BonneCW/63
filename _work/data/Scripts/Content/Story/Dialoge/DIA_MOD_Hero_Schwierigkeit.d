INSTANCE Info_Mod_Hero_Schwierigkeit (C_INFO)
{
	npc		= PC_Hero;
	nr		= 4;
	condition	= Info_Mod_Hero_Schwierigkeit_Condition;
	information	= Info_Mod_Hero_Schwierigkeit_Info;
	permanent	= 1;
	important	= 0;
	description	= "Schwierigkeitsgrad einstellen";
};

FUNC INT Info_Mod_Hero_Schwierigkeit_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_HERO)
	&& (WaveCounter < 64)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_Info()
{
	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);

	if (Mod_Schwierigkeit > 0)
	{
		Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "Zurück", Info_Mod_Hero_Schwierigkeit_BACK);
	};
	Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "(Sehr Schwer)", Info_Mod_Hero_Schwierigkeit_SehrSchwer);
	Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "(Schwer)", Info_Mod_Hero_Schwierigkeit_Schwer);
	Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "(Mittel)", Info_Mod_Hero_Schwierigkeit_Mittel);
	Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "(Einfach)", Info_Mod_Hero_Schwierigkeit_Leicht);
	Info_AddChoice	(Info_Mod_Hero_Schwierigkeit, "(Sehr Einfach)", Info_Mod_Hero_Schwierigkeit_SehrLeicht);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_BACK()
{
	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_SehrSchwer()
{
	Mod_Schwierigkeit = 5;

	HP_PER_LEVEL = 48;

	PrintScreen ("Schwierigkeitsgrad gewählt: Sehr Schwer", -1, -1, FONT_ScreenSmall, 2);	

	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_Schwer()
{
	Mod_Schwierigkeit = 4;

	HP_PER_LEVEL = 36;

	PrintScreen ("Schwierigkeitsgrad gewählt: Schwer", -1, -1, FONT_ScreenSmall, 2);

	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_Mittel()
{
	Mod_Schwierigkeit = 3;

	HP_PER_LEVEL = 24;

	PrintScreen ("Schwierigkeitsgrad gewählt: Mittel", -1, -1, FONT_ScreenSmall, 2);

	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_Leicht()
{
	Mod_Schwierigkeit = 2;

	HP_PER_LEVEL = 12;

	PrintScreen ("Schwierigkeitsgrad gewählt: Einfach", -1, -1, FONT_ScreenSmall, 2);

	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};

FUNC VOID Info_Mod_Hero_Schwierigkeit_SehrLeicht()
{
	Mod_Schwierigkeit = 1;

	HP_PER_LEVEL = 12;

	PrintScreen ("Schwierigkeitsgrad gewählt: Sehr Einfach", -1, -1, FONT_ScreenSmall, 2);

	Info_ClearChoices	(Info_Mod_Hero_Schwierigkeit);
};