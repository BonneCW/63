INSTANCE Info_Mod_Ausstatter_Ruestung02 (C_INFO)
{
	npc		= Ausstatter;
	nr		= 1;
	condition	= Info_Mod_Ausstatter_Ruestung02_Condition;
	information	= Info_Mod_Ausstatter_Ruestung02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausstatter_Ruestung02_Condition()
{
	if ((Npc_HasItems(hero, ItAr_WNov_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Nov_DMB_01) == 1)
	|| (Npc_HasItems(hero, ItAr_Nov_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Vlk_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Leather_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Mil_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Sld_L) == 1))
	&& (WaveCounter > 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausstatter_Ruestung02_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausstatter_Ruestung02_12_00"); //Ich habe hier eine neue Rüstung für dich.
};

INSTANCE Info_Mod_Ausstatter_Ruestung03 (C_INFO)
{
	npc		= Ausstatter;
	nr		= 1;
	condition	= Info_Mod_Ausstatter_Ruestung03_Condition;
	information	= Info_Mod_Ausstatter_Ruestung03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausstatter_Ruestung03_Condition()
{
	if ((Npc_HasItems(hero, ItAr_Sld_H) == 1)
	|| (Npc_HasItems(hero, ItAr_Pal_M) == 1)
	|| (Npc_HasItems(hero, ItAr_BDT_M) == 1)
	|| (Npc_HasItems(hero, ItAr_Bdt_M) == 1)
	|| (Npc_HasItems(hero, ItAr_Kdf_L) == 1)
	|| (Npc_HasItems(hero, ItAr_Kdw_L_Addon) == 1)
	|| (Npc_HasItems(hero, ItAr_Dementor) == 1))
	&& (WaveCounter > 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausstatter_Ruestung03_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausstatter_Ruestung03_12_00"); //Ich habe hier eine ganz besondere Rüstung für dich.
	AI_Output(self, hero, "Info_Mod_Ausstatter_Ruestung03_12_01"); //Sollte dir einiges an Schutz bieten.
};

var int Moep;
var int CurrentStr;
var int CurrentDex;

INSTANCE Info_Mod_Ausstatter_NeueWaffe (C_INFO)
{
	npc		= Ausstatter;
	nr		= 1;
	condition	= Info_Mod_Ausstatter_NeueWaffe_Condition;
	information	= Info_Mod_Ausstatter_NeueWaffe_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ausstatter_NeueWaffe_Condition()
{
	Moep = 0;

	if ((Mod_Klasse == 1)
	|| (Mod_Klasse == 2)
	|| (Mod_Klasse == 4))
	&& ((((hero.HitChance[NPC_TALENT_1H]) >= (hero.HitChance[NPC_TALENT_2H]))
	&& (StrWaffe < 140))
	|| (((hero.HitChance[NPC_TALENT_2H]) > (hero.HitChance[NPC_TALENT_1H]))
	&& (StrWaffe < 170)))
	{
		if ((hero.HitChance[NPC_TALENT_1H]) >= (hero.HitChance[NPC_TALENT_2H]))
		{
			if (hero.attribute[ATR_STRENGTH] >= 140)
			&& (StrWaffe < 140)
			&& (CurrentStr < 140)
			{
				Moep = 1;

				CurrentStr = 140;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 100)
			&& (StrWaffe < 100)
			&& (CurrentStr < 100)
			{
				Moep = 1;

				CurrentStr = 100;
			}
			else if (hero.attribute[ATR_DEXTERITY] >= 60)
			&& (StrWaffe < 60)
			&& (CurrentStr < 60)
			{
				Moep = 1;

				CurrentStr = 60;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 80)
			&& (StrWaffe < 80)
			&& (CurrentStr < 80)
			{
				Moep = 1;

				CurrentStr = 80;
			}
			else if (hero.attribute[ATR_DEXTERITY] >= 50)
			&& (StrWaffe < 50)
			&& (CurrentStr < 50)
			{
				Moep = 1;

				CurrentStr = 50;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 70)
			&& (StrWaffe < 70)
			&& (CurrentStr < 70)
			{
				Moep = 1;

				CurrentStr = 70;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 60)
			&& (StrWaffe < 60)
			&& (CurrentStr < 60)
			{
				Moep = 1;

				CurrentStr = 60;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 40)
			&& (StrWaffe < 40)
			&& (CurrentStr < 40)
			{
				Moep = 1;

				CurrentStr = 40;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 25)
			&& (StrWaffe < 25)
			&& (CurrentStr < 25)
			{
				Moep = 1;

				CurrentStr = 25;
			}
			else
			{
				Moep = 0;
			};
		}
		else
		{
			if (hero.attribute[ATR_STRENGTH] >= 170)
			&& (StrWaffe < 170)
			&& (CurrentStr < 170)
			{
				Moep = 1;

				CurrentStr = 170;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 160)
			&& (StrWaffe < 160)
			&& (CurrentStr < 160)
			{
				Moep = 1;

				CurrentStr = 160;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 120)
			&& (StrWaffe < 120)
			&& (CurrentStr < 120)
			{
				Moep = 1;

				CurrentStr = 120;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 100)
			&& (StrWaffe < 100)
			&& (CurrentStr < 100)
			{
				Moep = 1;

				CurrentStr = 100;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 80)
			&& (StrWaffe < 80)
			&& (CurrentStr < 80)
			{
				Moep = 1;

				CurrentStr = 80;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 75)
			&& (StrWaffe < 75)
			&& (CurrentStr < 75)
			{
				Moep = 1;

				CurrentStr = 75;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 70)
			&& (StrWaffe < 70)
			&& (CurrentStr < 70)
			{
				Moep = 1;

				CurrentStr = 70;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 55)
			&& (StrWaffe < 55)
			&& (CurrentStr < 55)
			{
				Moep = 1;

				CurrentStr = 55;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 50)
			&& (StrWaffe < 50)
			&& (CurrentStr < 50)
			{
				Moep = 1;

				CurrentStr = 50;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 35)
			&& (StrWaffe < 35)
			&& (CurrentStr < 35)
			{
				Moep = 1;

				CurrentStr = 35;
			};
		};
	};

	return Moep;
};

FUNC VOID Info_Mod_Ausstatter_NeueWaffe_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausstatter_NeueWaffe_12_00"); //Ich hab eine neue Waffe für dich!
};

INSTANCE Info_Mod_Ausstatter_NeuerBogen (C_INFO)
{
	npc		= Ausstatter;
	nr		= 1;
	condition	= Info_Mod_Ausstatter_NeuerBogen_Condition;
	information	= Info_Mod_Ausstatter_NeuerBogen_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ausstatter_NeuerBogen_Condition()
{
	Moep = 0;

	if ((Mod_Klasse == 3)
	|| (Mod_Klasse == 4))
	&& (DexWaffe < 160)
	{
		if (hero.attribute[ATR_DEXTERITY] >= 160)
		&& (DexWaffe < 160)
		&& (CurrentDex < 160)
		{
			Moep = 1;

			CurrentDex = 160;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 150)
		&& (DexWaffe < 150)
		&& (CurrentDex < 150)
		{
			Moep = 1;

			CurrentDex = 150;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 140)
		&& (DexWaffe < 140)
		&& (CurrentDex < 140)
		{
			Moep = 1;

			CurrentDex = 140;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 120)
		&& (DexWaffe < 120)
		&& (CurrentDex < 120)
		{
			Moep = 1;

			CurrentDex = 120;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 110)
		&& (DexWaffe < 110)
		&& (CurrentDex < 110)
		{
			Moep = 1;

			CurrentDex = 110;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 90)
		&& (DexWaffe < 90)
		&& (CurrentDex < 90)
		{
			Moep = 1;

			CurrentDex = 90;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 80)
		&& (DexWaffe < 80)
		&& (CurrentDex < 80)
		{
			Moep = 1;

			CurrentDex = 80;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 60)
		&& (DexWaffe < 60)
		&& (CurrentDex < 60)
		{
			Moep = 1;

			CurrentDex = 60;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 50)
		&& (DexWaffe < 50)
		&& (CurrentDex < 50)
		{
			Moep = 1;

			CurrentDex = 50;
		}
		else if (hero.attribute[ATR_DEXTERITY] >= 30)
		&& (DexWaffe < 30)
		&& (CurrentDex < 30)
		{
			Moep = 1;

			CurrentDex = 30;
		};
	};

	return Moep;
};

FUNC VOID Info_Mod_Ausstatter_NeuerBogen_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausstatter_NeuerBogen_12_00"); //Ich hab einen neuen Bogen für dich!
};

INSTANCE Info_Mod_Ausstatter_MagicWeapon (C_INFO)
{
	npc		= Ausstatter;
	nr		= 1;
	condition	= Info_Mod_Ausstatter_MagicWeapon_Condition;
	information	= Info_Mod_Ausstatter_MagicWeapon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ausstatter_MagicWeapon_Condition()
{
	if (WaveCounter >= 40)
	&& (Mod_Klasse < 5)
	&& (HasMagicWeapon == FALSE)
	&& (HasBestWeapon == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausstatter_MagicWeapon_Info()
{
	AI_Output(self, hero, "Info_Mod_Ausstatter_MagicWeapon_12_00"); //Ich habe eine ganz besondere Waffe für dich.
};