FUNC VOID B_OpenKaufmenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Kaufen);

	Info_AddChoice	(Info_Mod_Hero_Kaufen, "Zurück", Info_Mod_Hero_Kaufen_BACK);

	if (Beste_Ruestung == FALSE)
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "Rüstung (20 Punkte)", Info_Mod_Hero_Kaufen_Ruestung);
	};

	if (WaveCounter >= 40)
	&& (Mod_Klasse < 5)
	&& (HasMagicWeapon == FALSE)
	&& (HasBestWeapon == TRUE)
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "Magische Waffe (20 Punkte)", Info_Mod_Hero_Kaufen_Magic);
	};
	
	if ((Mod_Klasse == 2)
	&& ((Npc_HasItems(hero, ItRu_PalDestroyEvil) == 0)
	|| (Npc_HasItems(hero, ItRu_PalRepelEvil) == 0)
	|| (Npc_HasItems(hero, ItRu_PalFullHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_PalMediumHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_PalHolyBolt) == 0)
	|| (Npc_HasItems(hero, ItRu_PalLightHeal) == 0)))
	|| ((Mod_Klasse == 5)
	&& ((Npc_HasItems(hero, ItRu_Shrink) == 0)
	|| (Npc_HasItems(hero, ItRu_Firerain) == 0)
	|| (Npc_HasItems(hero, ItRu_FullHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Pyrokinesis) == 0)
	|| (Npc_HasItems(hero, ItRu_HarmUndead) == 0)
	|| (Npc_HasItems(hero, ItRu_ChargeFireball) == 0)
	|| (Npc_HasItems(hero, ItRu_MediumHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Firestorm) == 0)
	|| (Npc_HasItems(hero, ItRu_Fear) == 0)
	|| (Npc_HasItems(hero, ItRu_Windfist) == 0)
	|| (Npc_HasItems(hero, ItRu_InstantFireball) == 0)
	|| (Npc_HasItems(hero, ItRu_LightHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_FireBolt) == 0)))
	|| ((Mod_Klasse == 6)
	&& ((Npc_HasItems(hero, ItRu_Shrink) == 0)
	|| (Npc_HasItems(hero, ItRu_FullHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Icewave) == 0)
	|| (Npc_HasItems(hero, ItRu_Waterfist) == 0)
	|| (Npc_HasItems(hero, ItRu_HarmUndead) == 0)
	|| (Npc_HasItems(hero, ItRu_LightningFlash) == 0)
	|| (Npc_HasItems(hero, ItRu_MediumHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Thunderball) == 0)
	|| (Npc_HasItems(hero, ItRu_Geyser) == 0)
	|| (Npc_HasItems(hero, ItRu_Icecube) == 0)
	|| (Npc_HasItems(hero, ItRu_Fear) == 0)
	|| (Npc_HasItems(hero, ItRu_Windfist) == 0)
	|| (Npc_HasItems(hero, ItRu_Icebolt) == 0)
	|| (Npc_HasItems(hero, ItRu_Icelance) == 0)
	|| (Npc_HasItems(hero, ItRu_LightHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Zap) == 0)))
	|| ((Mod_Klasse == 7)
	&& ((Npc_HasItems(hero, ItRu_MassDeath) == 0)
	|| (Npc_HasItems(hero, ItRu_BreathofDeath) == 0)
	|| (Npc_HasItems(hero, ItRu_Shrink) == 0)
	|| (Npc_HasItems(hero, ItRu_ArmyOfDarkness) == 0)
	|| (Npc_HasItems(hero, ItRu_FullHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_Skull) == 0)
	|| (Npc_HasItems(hero, ItRu_SumDemon) == 0)
	|| (Npc_HasItems(hero, ItRu_HarmUndead) == 0)
	|| (Npc_HasItems(hero, ItRu_SumGol) == 0)
	|| (Npc_HasItems(hero, ItRu_SumSkel) == 0)
	|| (Npc_HasItems(hero, ItRu_MediumHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_BeliarsRage) == 0)
	|| (Npc_HasItems(hero, ItRu_Fear) == 0)
	|| (Npc_HasItems(hero, ItRu_SumWolf) == 0)
	|| (Npc_HasItems(hero, ItRu_Windfist) == 0)
	|| (Npc_HasItems(hero, ItRu_LightHeal) == 0)
	|| (Npc_HasItems(hero, ItRu_SumGobSkel) == 0)))
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "Runen", Info_Mod_Hero_Kaufen_Runen);
	};
	if ((Mod_Klasse == 3)
	|| (Mod_Klasse == 4))
	&& (DexWaffe < 160)
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "Fernkampfwaffen (10 Punkte)", Info_Mod_Hero_Kaufen_Fernkampfwaffen);
	};
	if ((Mod_Klasse == 1)
	|| (Mod_Klasse == 2)
	|| (Mod_Klasse == 4))
	&& ((((hero.HitChance[NPC_TALENT_1H]) > (hero.HitChance[NPC_TALENT_2H]))
	&& (StrWaffe < 140))
	|| (((hero.HitChance[NPC_TALENT_2H]) >= (hero.HitChance[NPC_TALENT_1H]))
	&& (StrWaffe < 170)))
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "Nahkampfwaffen (10 Punkte)", Info_Mod_Hero_Kaufen_Nahkampfwaffen);
	};
	
	if (Mod_Klasse == 2)
	|| (Mod_Klasse == 5)
	|| (Mod_Klasse == 6)
	|| (Mod_Klasse == 7)
	{
		Info_AddChoice	(Info_Mod_Hero_Kaufen, "5 Manatränke (5 Punkte)", Info_Mod_Hero_Kaufen_Mana);
	};

	Info_AddChoice	(Info_Mod_Hero_Kaufen, "5 Heiltränke (5 Punkte)", Info_Mod_Hero_Kaufen_Heil);
};

FUNC VOID B_OpenRunenMenu()
{
	Info_ClearChoices	(Info_Mod_Hero_Kaufen);

	Info_AddChoice	(Info_Mod_Hero_Kaufen, "Zurück", Info_Mod_Hero_Kaufen_Runen_BACK);

	if (Mod_Circle == 6)
	{
		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_MassDeath) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Todeswelle (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Todeswelle);
			};
			if (Npc_HasItems(hero, ItRu_BreathofDeath) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Todeshauch (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Todeshauch);
			};
		};
		if (Npc_HasItems(hero, ItRu_Shrink) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Monster schrumpfen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Shrink);
		};
		if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItRu_Firerain) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Feuerregen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Feuerregen);
			};
		};

		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_ArmyOfDarkness) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Armee der Finsternis (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_ArmyofDarkness);
			};
		};
	};
	if (Mod_Circle >= 5)
	{
		if (Npc_HasItems(hero, ItRu_FullHeal) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Schwere Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_HealFull);
		};

		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_Skull) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Schrei der Toten (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Skull);
			};
		};

		if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItRu_Pyrokinesis) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Großer Feuersturm (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Pyrokinesis);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Icewave) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Eiswelle (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Eiswelle);
			};
		};

		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_SumDemon) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Dämon beschwören (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_SumDemon);
			};
		};
	};
	if (Mod_Circle >= 4)
	{
		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Waterfist) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Wasserfaust (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Waterfist);
			};
		};

		if (Npc_HasItems(hero, ItRu_HarmUndead) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Untote vernichten (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_HarmUndead);
		};

		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_SumGol) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Golem erschaffen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_SumGol);
			};
		};

		if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItRu_ChargeFireball) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Großer Feuerball (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_ChargeFireball);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_LightningFlash) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Blitzschlag (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Blitzschlag);
			};
		};
	};
	if (Mod_Circle >= 3)
	{
		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_SumSkel) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Skelett erschaffen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_SumSkel);
			};
		};

		if (Npc_HasItems(hero, ItRu_MediumHeal) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Mittlere Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_HealMedium);
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Thunderball) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Kugelblitz (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Kugelblitz);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Geyser) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Geysir (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Geyser);
			};
		};

		if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItRu_Firestorm) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Feuersturm (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Firestorm);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Icecube) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Eisblock (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Icecube);
			};
		};

		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_BeliarsRage) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Beliars Zorn (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_BeliarsRage);
			};
		};

		if (Npc_HasItems(hero, ItRu_Fear) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Angst (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Angst);
		};
	};
	if (Mod_Circle >= 2)
	{
		if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItRu_SumWolf) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Wolf rufen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_SumWolf);
			};
		};

		if (Npc_HasItems(hero, ItRu_Windfist) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Windfaust (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Windfaust);
		};

		if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItRu_InstantFireball) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Feuerball (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Fireball);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Icebolt) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Eispfeil (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Icebolt);
			};
		};

		if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItRu_Icelance) == 0)
			{
				Info_AddChoice	(Info_Mod_Hero_Kaufen, "Eislanze (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_Icelance);
			};
		};
	};
	if (Mod_Circle >= 1)
	{
		if (Npc_HasItems(hero, ItRu_LightHeal) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Leichte Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_HealLight);
		};
	};
	if (Mod_Klasse == 2)
	{
		if (Npc_HasItems(hero, ItRu_PalDestroyEvil) == 0)
		&& (Npc_HasItems(hero, ItRu_PalRepelEvil) == 1)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Böses vernichten (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaDestroyEvil);
		};
		if (Npc_HasItems(hero, ItRu_PalFullHeal) == 0)
		&& (Npc_HasItems(hero, ItRu_PalMediumHeal) == 1)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Schwere Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaHealFull);
		};
		if (Npc_HasItems(hero, ItRu_PalRepelEvil) == 0)
		&& (Npc_HasItems(hero, ItRu_PalHolyBolt) == 1)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Böses vertreiben (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaRepelEvil);
		};
		if (Npc_HasItems(hero, ItRu_PalMediumHeal) == 0)
		&& (Npc_HasItems(hero, ItRu_PalLightHeal) == 1)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Mittlere Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaHealMedium);
		};			
		if (Npc_HasItems(hero, ItRu_PalHolyBolt) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Heiliger Pfeil (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaHolyBolt);
		};
		if (Npc_HasItems(hero, ItRu_PalLightHeal) == 0)
		{
			Info_AddChoice	(Info_Mod_Hero_Kaufen, "Leichte Wunden Heilen (10 Punkte)", Info_Mod_Hero_Kaufen_Runen_PalaHealLight);
		};
	};
};

INSTANCE Info_Mod_Hero_Kaufen (C_INFO)
{
	npc		= Ausstatter;
	nr		= 3;
	condition	= Info_Mod_Hero_Kaufen_Condition;
	information	= Info_Mod_Hero_Kaufen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Einkaufen";
};

FUNC INT Info_Mod_Hero_Kaufen_Condition()
{
	if (Mod_Klasse > 0)
	&& (Mod_Schwierigkeit > 0)
	&& (Mod_Levelwahl > 0)
	&& (WaveCounter < 64)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Kaufen_Info()
{
	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_BACK()
{
	Info_ClearChoices	(Info_Mod_Hero_Kaufen);
};

FUNC VOID Info_Mod_Hero_Kaufen_Ruestung()
{
	if (hero.lp >= 20)
	{
		hero.lp -= 20;

		AI_UnequipArmor	(hero);

		if (Mod_Klasse == 1)
		{
			if (Npc_HasItems(hero, ItAr_Sld_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Sld_L, 1);
				CreateInvItems	(hero, ItAr_Sld_H, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Sld_H) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Sld_H, 1);
				CreateInvItems	(hero, ItAr_Djg_H, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 2)
		{
			if (Npc_HasItems(hero, ItAr_Mil_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Mil_L, 1);
				CreateInvItems	(hero, ItAr_Pal_M, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Pal_M) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Pal_M, 1);
				CreateInvItems	(hero, ItAr_Pal_H, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 3)
		{
			if (Npc_HasItems(hero, ItAr_Leather_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Leather_L, 1);
				CreateInvItems	(hero, ItAr_BDT_M, 1);
			}
			else if (Npc_HasItems(hero, ItAr_BDT_M) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_BDT_M, 1);
				CreateInvItems	(hero, ItAr_Djg_Crawler, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 4)
		{
			if (Npc_HasItems(hero, ItAr_Vlk_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Vlk_L, 1);
				CreateInvItems	(hero, ItAr_Bdt_M, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Bdt_M) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Bdt_M, 1);
				CreateInvItems	(hero, ItAr_Bdt_H, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 5)
		{
			if (Npc_HasItems(hero, ItAr_Nov_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Nov_L, 1);
				CreateInvItems	(hero, ItAr_Kdf_L, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Kdf_L) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Kdf_L, 1);
				CreateInvItems	(hero, ItAr_Kdf_H, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 6)
		{
			if (Npc_HasItems(hero, ItAr_WNov_L) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_WNov_L, 1);
				CreateInvItems	(hero, ItAr_Kdw_L_Addon, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Kdw_L_Addon) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Kdw_L_Addon, 1);
				CreateInvItems	(hero, ItAr_Kdw_H, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		}
		else if (Mod_Klasse == 7)
		{
			if (Npc_HasItems(hero, ItAr_Nov_DMB_01) == 1)
			&& (WaveCounter > 10)
			{
				Npc_RemoveInvItems	(hero, ItAr_Nov_DMB_01, 1);
				CreateInvItems	(hero, ItAr_Dementor, 1);
			}
			else if (Npc_HasItems(hero, ItAr_Dementor) == 1)
			&& (WaveCounter > 20)
			{
				Npc_RemoveInvItems	(hero, ItAr_Dementor, 1);
				CreateInvItems	(hero, ItAr_Xardas, 1);

				Beste_Ruestung = TRUE;
			}
			else
			{
				Print	("Zur Zeit keine neue Rüstung verfügbar!");

				hero.lp += 20;
			};
		};

		AI_EquipBestArmor	(hero);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Magic()
{
	if (hero.lp >= 20)
	{
		hero.lp -= 20;

		HasMagicWeapon = TRUE;

		AI_UnequipWeapons	(hero);

		if (Mod_Klasse == 1)
		|| (Mod_Klasse == 2)
		{
			if ((hero.HitChance[NPC_TALENT_1H]) > (hero.HitChance[NPC_TALENT_2H]))
			{
				CreateInvItems	(hero, ItMw_BeliarWeapon_1H_20, 1);
			}
			else 
			{
				CreateInvItems	(hero, ItMw_BeliarWeapon_2H_20, 1);
			};

			Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
			Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
			Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
			Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
			Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
			Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
			Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
			Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
			Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
			Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
			Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
			Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
			Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);
			Npc_RemoveInvItems	(hero, ItMw_2H_Special_02, 1);
			Npc_RemoveInvItems	(hero, ItMw_1H_Blessed_03, 1);
			Npc_RemoveInvItems	(hero, ItMw_2H_Blessed_03, 1);
			Npc_RemoveInvItems	(hero, ItMw_1H_Special_04, 1);
			Npc_RemoveInvItems	(hero, ItMw_Drachenschneide, 1);
			Npc_RemoveInvItems	(hero, ItMw_Berserkeraxt, 1);
		}
		else
		{
			CreateInvItems	(hero, ItRw_Addon_MagicBow, 1);

			Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_M_04, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_H_01, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_H_02, 1);
			Npc_RemoveInvItems	(hero, ItRw_Bow_H_03, 1);
		};

		if (Mod_Klasse == 3)
		|| (Mod_Klasse == 4)
		{
			AI_EquipBestRangedWeapon	(hero);
		};

		AI_EquipBestMeleeWeapon	(hero);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen()
{
	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_BACK()
{
	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Todeswelle()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_MassDeath, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Todeshauch()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_BreathofDeath, 1);
	};

	B_OpenRunenMenu();
};	

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Shrink()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Shrink, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Feuerregen()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Firerain, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_ArmyofDarkness()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_ArmyOfDarkness, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Geyser()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Geyser, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Waterfist()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Waterfist, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_HealFull()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_FullHeal, 1);
	};

	B_OpenRunenMenu();
};		

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Pyrokinesis()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Pyrokinesis, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_SumDemon()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_SumDemon, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Icelance()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Icelance, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_BeliarsRage()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_BeliarsRage, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Eiswelle()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Icewave, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_SumGol()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_SumGol, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Blitzschlag()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Lightningflash, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Skull()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Skull, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_ChargeFireball()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_ChargeFireball, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_HarmUndead()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_HarmUndead, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_SumSkel()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_SumSkel, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Kugelblitz()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Thunderball, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_HealMedium()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_MediumHeal, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Firestorm()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Firestorm, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Angst()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Fear, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Icecube()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Icecube, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Fireball()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_InstantFireball, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Windfaust()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Windfist, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_SumWolf()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_SumWolf, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_Icebolt()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_Icebolt, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_HealLight()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_LightHeal, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaDestroyEvil()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalDestroyEvil, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaHealFull()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalFullHeal, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaRepelEvil()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalRepelEvil, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaHealMedium()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalMediumHeal, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaHolyBolt()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalHolyBolt, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Runen_PalaHealLight()
{
	if (hero.lp < 10)
	{
		Print ("Nicht genug Punkte!");
	}
	else
	{
		hero.lp -= 10;

		CreateInvItems	(hero, ItRu_PalLightHeal, 1);
	};

	B_OpenRunenMenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Fernkampfwaffen()
{
	if (hero.lp >= 10)
	{
	hero.lp -= 10;

	AI_UnequipWeapons	(hero);

	if (hero.attribute[ATR_DEXTERITY] >= 160)
	&& (DexWaffe < 160)
	{
		CreateInvItems	(hero, ItRw_Bow_H_04, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_03, 1);

		DexWaffe = 160;

		HasBestWeapon = TRUE;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 150)
	&& (DexWaffe < 150)
	{
		CreateInvItems	(hero, ItRw_Bow_H_03, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_02, 1);

		DexWaffe = 150;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 140)
	&& (DexWaffe < 140)
	{
		CreateInvItems	(hero, ItRw_Bow_H_02, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_H_01, 1);

		DexWaffe = 140;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 120)
	&& (DexWaffe < 120)
	{
		CreateInvItems	(hero, ItRw_Bow_H_01, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_04, 1);

		DexWaffe = 120;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 110)
	&& (DexWaffe < 110)
	{
		CreateInvItems	(hero, ItRw_Bow_M_04, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_03, 1);

		DexWaffe = 110;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 90)
	&& (DexWaffe < 90)
	{
		CreateInvItems	(hero, ItRw_Bow_M_03, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_02, 1);

		DexWaffe = 90;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 80)
	&& (DexWaffe < 80)
	{
		CreateInvItems	(hero, ItRw_Bow_M_02, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_M_01, 1);

		DexWaffe = 80;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 60)
	&& (DexWaffe < 60)
	{
		CreateInvItems	(hero, ItRw_Bow_M_01, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
		Npc_RemoveInvItems	(hero, ItRw_Bow_L_04, 1);

		DexWaffe = 60;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 50)
	&& (DexWaffe < 50)
	{
		CreateInvItems	(hero, ItRw_Bow_L_04, 1);

		Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);

		DexWaffe = 50;
	}
	else if (hero.attribute[ATR_DEXTERITY] >= 30)
	&& (DexWaffe < 30)
	{
		CreateInvItems	(hero, ItRw_Bow_L_03, 1);

		DexWaffe = 30;
	}
	else
	{
		Print	("Zur Zeit kein besserer Bogen erhältlich");

		hero.lp += 10;
	};

	if (Mod_Klasse == 4)
	{
		AI_EquipBestMeleeWeapon (hero);
	};

	AI_EquipBestRangedWeapon (hero);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Nahkampfwaffen()
{
	if (hero.lp >= 10)
	{
		hero.lp -= 10;

		AI_UnequipWeapons	(hero);

		if ((hero.HitChance[NPC_TALENT_1H]) > (hero.HitChance[NPC_TALENT_2H]))
		{
			if (hero.attribute[ATR_STRENGTH] >= 140)
			&& (StrWaffe < 140)
			{
				CreateInvItems	(hero, ItMw_1H_Special_04, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Special_02, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Blessed_03, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Blessed_03, 1);

				StrWaffe = 140;

				HasBestWeapon = TRUE;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 100)
			&& (StrWaffe < 100)
			{
				CreateInvItems	(hero, ItMw_1H_Blessed_03, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);

				StrWaffe = 100;
			}
			else if (hero.attribute[ATR_DEXTERITY] >= 60)
			&& (StrWaffe < 60)
			{
				CreateInvItems	(hero, ItMw_Meisterdegen, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);

				StrWaffe = 60;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 80)
			&& (StrWaffe < 80)
			{
				CreateInvItems	(hero, ItMw_1H_Special_02, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);

				StrWaffe = 80;
			}
			else if (hero.attribute[ATR_DEXTERITY] >= 50)
			&& (StrWaffe < 50)
			{
				CreateInvItems	(hero, ItMw_Rapier, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);

				StrWaffe = 50;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 70)
			&& (StrWaffe < 70)
			{
				CreateInvItems	(hero, ItMw_Schwert4, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);

				StrWaffe = 70;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 60)
			&& (StrWaffe < 60)
			{
				CreateInvItems	(hero, ItMw_Piratensaebel, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);

				StrWaffe = 60;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 40)
			&& (StrWaffe < 40)
			{
				CreateInvItems	(hero, ItMw_1H_Special_01, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);

				StrWaffe = 40;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 25)
			&& (StrWaffe < 25)
			{
				CreateInvItems	(hero, ItMw_ShortSword5, 1);

				StrWaffe = 25;
			}
			else
			{
				Print	("Zur Zeit keine bessere Waffe erhältlich");

				hero.lp += 10;
			};
		}
		else
		{
			if (hero.attribute[ATR_STRENGTH] >= 170)
			&& (StrWaffe < 170)
			{
				CreateInvItems	(hero, ItMw_Berserkeraxt, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Special_02, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Blessed_03, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Blessed_03, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_04, 1);
				Npc_RemoveInvItems	(hero, ItMw_Drachenschneide, 1);

				StrWaffe = 170;

				HasBestWeapon = TRUE;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 160)
			&& (StrWaffe < 160)
			{
				CreateInvItems	(hero, ItMw_Drachenschneide, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Special_02, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Blessed_03, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Blessed_03, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_04, 1);

				StrWaffe = 160;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 120)
			&& (StrWaffe < 120)
			{
				CreateInvItems	(hero, ItMw_2H_Blessed_03, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);
				Npc_RemoveInvItems	(hero, ItMw_2H_Special_02, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Blessed_03, 1);

				StrWaffe = 120;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 100)
			&& (StrWaffe < 100)
			{
				CreateInvItems	(hero, ItMw_2H_Special_02, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				Npc_RemoveInvItems	(hero, ItMw_Streitaxt1, 1);
				Npc_RemoveInvItems	(hero, ItMw_Meisterdegen, 1);

				StrWaffe = 100;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 80)
			&& (StrWaffe < 80)
			{
				if (Mod_Klasse == 2)
				{
					CreateInvItems	(hero, ItMw_2h_Pal_Sword, 1);
				}
				else
				{
					CreateInvItems	(hero, ItMw_Streitaxt1, 1);
				};

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);
				Npc_RemoveInvItems	(hero, ItMW_Zweihaender1, 1);
				Npc_RemoveInvItems	(hero, ItMW_Rapier, 1);

				StrWaffe = 80;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 75)
			&& (StrWaffe < 75)
			{
				CreateInvItems	(hero, ItMw_Zweihaender1, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);
				Npc_RemoveInvItems	(hero, ItMw_Schwert4, 1);
				Npc_RemoveInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);

				StrWaffe = 75;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 70)
			&& (StrWaffe < 70)
			{
				CreateInvItems	(hero, ItMW_Addon_Hacker_2h_02, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);
				Npc_RemoveInvItems	(hero, ItMw_Hellebarde, 1);
				Npc_RemoveInvItems	(hero, ItMw_Piratensaebel, 1);

				StrWaffe = 70;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 55)
			&& (StrWaffe < 55)
			{
				CreateInvItems	(hero, ItMw_Hellebarde, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);
				Npc_RemoveInvItems	(hero, ItMw_2h_Bau_Axe, 1);

				StrWaffe = 55;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 50)
			&& (StrWaffe < 50)
			{
				CreateInvItems	(hero, ItMw_2h_Bau_Axe, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);
				Npc_RemoveInvItems	(hero, ItMw_Richtstab, 1);
				Npc_RemoveInvItems	(hero, ItMw_1H_Special_01, 1);

				StrWaffe = 50;
			}
			else if (hero.attribute[ATR_STRENGTH] >= 35)
			&& (StrWaffe < 35)
			{
				CreateInvItems	(hero, ItMW_Richtstab, 1);

				Npc_RemoveInvItems	(hero, ItMw_ShortSword5, 1);

				StrWaffe = 35;
			}
			else
			{
				Print	("Zur Zeit keine bessere Waffe erhältlich");

				hero.lp += 10;
			};
		};

		if (Mod_Klasse == 4)
		{
			AI_EquipBestRangedWeapon	(hero);
		};

		AI_EquipBestMeleeWeapon	(hero);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Mana()
{
	if (hero.lp >= 5)
	{
		hero.lp -= 5;

		CreateInvItems	(hero, ItPo_Mana, 5);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

FUNC VOID Info_Mod_Hero_Kaufen_Heil()
{
	if (hero.lp >= 5)
	{
		hero.lp -= 5;

		CreateInvItems	(hero, ItPo_HP, 5);
	}
	else
	{
		Print ("Nicht genug Punkte!");
	};

	B_OpenKaufmenu();
};

INSTANCE Info_Mod_Ausstatter_EXIT (C_INFO)
{
	npc		= Ausstatter;
	nr		= 8;
	condition	= Info_Mod_Ausstatter_EXIT_Condition;
	information	= Info_Mod_Ausstatter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ausstatter_EXIT_Condition()
{
	if (WaveCounter < 61)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ausstatter_EXIT_Info()
{
	AI_StopProcessInfos	(hero);
};