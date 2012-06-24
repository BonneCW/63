INSTANCE Info_Mod_Ausbilder_Kreis02 (C_INFO)
{
	npc		= Ausbilder;
	nr		= 1;
	condition	= Info_Mod_Ausbilder_Kreis02_Condition;
	information	= Info_Mod_Ausbilder_Kreis02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausbilder_Kreis02_Condition()
{
	if (Mod_Circle == 1)
	&& (WaveCounter > 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_Kreis02_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausbilder_Kreis02_12_00"); //Ich kann dich jetzt den zweiten Kreis der Magie lehren.
};

INSTANCE Info_Mod_Ausbilder_Kreis03 (C_INFO)
{
	npc		= Ausbilder;
	nr		= 1;
	condition	= Info_Mod_Ausbilder_Kreis03_Condition;
	information	= Info_Mod_Ausbilder_Kreis03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausbilder_Kreis03_Condition()
{
	if (Mod_Circle == 2)
	&& (WaveCounter > 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_Kreis03_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausbilder_Kreis03_12_00"); //Ich kann dich jetzt den dritten Kreis der Magie lehren.
};

INSTANCE Info_Mod_Ausbilder_Kreis04 (C_INFO)
{
	npc		= Ausbilder;
	nr		= 1;
	condition	= Info_Mod_Ausbilder_Kreis04_Condition;
	information	= Info_Mod_Ausbilder_Kreis04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausbilder_Kreis04_Condition()
{
	if (Mod_Circle == 3)
	&& (WaveCounter > 30)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_Kreis04_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausbilder_Kreis04_12_00"); //Ich kann dich jetzt den vierten Kreis der Magie lehren.
};

INSTANCE Info_Mod_Ausbilder_Kreis05 (C_INFO)
{
	npc		= Ausbilder;
	nr		= 1;
	condition	= Info_Mod_Ausbilder_Kreis05_Condition;
	information	= Info_Mod_Ausbilder_Kreis05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausbilder_Kreis05_Condition()
{
	if (Mod_Circle == 4)
	&& (WaveCounter > 40)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_Kreis05_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausbilder_Kreis05_12_00"); //Ich kann dich jetzt den fünften Kreis der Magie lehren.
};

INSTANCE Info_Mod_Ausbilder_Kreis06 (C_INFO)
{
	npc		= Ausbilder;
	nr		= 1;
	condition	= Info_Mod_Ausbilder_Kreis06_Condition;
	information	= Info_Mod_Ausbilder_Kreis06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausbilder_Kreis06_Condition()
{
	if (Mod_Circle == 5)
	&& (WaveCounter > 50)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausbilder_Kreis06_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausbilder_Kreis06_12_00"); //Ich kann dich jetzt den sechsten Kreis der Magie lehren.
};