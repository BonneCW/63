//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////				B_ScHasBeliarsWeapon			//////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
func int C_SCHasBeliarsRune()
{
	if (Npc_HasItems (hero, ItRu_BeliarsRage) 		== TRUE)
	|| (Npc_HasItems (hero, ItRu_SuckEnergy) 		== TRUE)
	|| (Npc_HasItems (hero, ItRu_GreenTentacle) 	== TRUE)
	|| (Npc_HasItems (hero, ItRu_Swarm) 			== TRUE)
	|| (Npc_HasItems (hero, ItRu_Skull) 			== TRUE)
	|| (Npc_HasItems (hero, ItRu_SummonZombie) 		== TRUE)
	|| (Npc_HasItems (hero, ItRu_SummonGuardian) 	== TRUE)
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};

func int C_ScHasFernkampfwaffe()
{
	if (Npc_HasItems (hero, ItRw_Addon_MagicBow))
	|| (Npc_HasItems (hero, ItRw_Addon_FireBow))
	|| (Npc_HasItems (hero, ItRw_Addon_MagicCrossbow))
	|| (Npc_HasItems (hero, ItRw_Mil_Crossbow))
	|| (Npc_HasItems (hero, ItRw_Sld_Bow))
	|| (Npc_HasItems (hero, ItRw_Bow_L_01))
	|| (Npc_HasItems (hero, ItRw_Bow_L_02))
	|| (Npc_HasItems (hero, ItRw_Bow_L_03))
	|| (Npc_HasItems (hero, ItRw_Bow_L_04))
	|| (Npc_HasItems (hero, ItRw_Bow_M_01))
	|| (Npc_HasItems (hero, ItRw_Bow_M_02))
	|| (Npc_HasItems (hero, ItRw_Bow_M_03))
	|| (Npc_HasItems (hero, ItRw_Bow_M_04))
	|| (Npc_HasItems (hero, ItRw_Bow_H_01))
	|| (Npc_HasItems (hero, ItRw_Bow_H_02))
	|| (Npc_HasItems (hero, ItRw_Bow_H_03))
	|| (Npc_HasItems (hero, ItRw_Bow_H_04))
	|| (Npc_HasItems (hero, ItRw_Crossbow_L_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_L_02))
	|| (Npc_HasItems (hero, ItRw_Crossbow_M_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_M_02))
	|| (Npc_HasItems (hero, ItRw_Crossbow_H_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_H_02))
	|| (Npc_HasItems (hero, ItRw_Bow_L_03_MIS))
	|| (Npc_HasItems (hero, ItRw_DragomirsArmbrust_MIS))
	|| (Npc_HasItems (hero, ItRw_SengrathsArmbrust_MIS))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasBogen()
{
	if (Npc_HasItems (hero, ItRw_Addon_MagicBow))
	|| (Npc_HasItems (hero, ItRw_Addon_FireBow))
	|| (Npc_HasItems (hero, ItRw_Sld_Bow))
	|| (Npc_HasItems (hero, ItRw_Bow_L_01))
	|| (Npc_HasItems (hero, ItRw_Bow_L_02))
	|| (Npc_HasItems (hero, ItRw_Bow_L_03))
	|| (Npc_HasItems (hero, ItRw_Bow_L_04))
	|| (Npc_HasItems (hero, ItRw_Bow_M_01))
	|| (Npc_HasItems (hero, ItRw_Bow_M_02))
	|| (Npc_HasItems (hero, ItRw_Bow_M_03))
	|| (Npc_HasItems (hero, ItRw_Bow_M_04))
	|| (Npc_HasItems (hero, ItRw_Bow_H_01))
	|| (Npc_HasItems (hero, ItRw_Bow_H_02))
	|| (Npc_HasItems (hero, ItRw_Bow_H_03))
	|| (Npc_HasItems (hero, ItRw_Bow_H_04))
	|| (Npc_HasItems (hero, ItRw_Bow_L_03_MIS))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasArmbrust()
{
	if (Npc_HasItems (hero, ItRw_Addon_MagicCrossbow))
	|| (Npc_HasItems (hero, ItRw_Mil_Crossbow))
	|| (Npc_HasItems (hero, ItRw_Crossbow_L_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_L_02))
	|| (Npc_HasItems (hero, ItRw_Crossbow_M_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_M_02))
	|| (Npc_HasItems (hero, ItRw_Crossbow_H_01))
	|| (Npc_HasItems (hero, ItRw_Crossbow_H_02))
	|| (Npc_HasItems (hero, ItRw_DragomirsArmbrust_MIS))
	|| (Npc_HasItems (hero, ItRw_SengrathsArmbrust_MIS))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasNahkampfwaffe()
{
	if (Npc_HasItems (hero, ItMw_BeliarWeapon_Raven )) //Joly: Ravens Waffe
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_20 )) 

	//------------------------------------------------

	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_20 )) 
	|| (Npc_HasItems (hero, ItMW_Addon_Knife01))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab01))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab02))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab03))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab04))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab05))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_1h_01))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_1h_02))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_2h_01))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_2h_02))
	|| (Npc_HasItems (hero, ItMW_Addon_Keule_1h_01))
	|| (Npc_HasItems (hero, ItMW_Addon_Keule_2h_01))
	|| (Npc_HasItems (hero, ItMw_FrancisDagger_Mis))
	|| (Npc_HasItems (hero, ItMw_RangerStaff_Addon))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR2hAxe))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR2hSword))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR1hAxe))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR1hSword))
	|| (Npc_HasItems (hero, ItMw_Addon_BanditTrader))
	|| (Npc_HasItems (hero, ItMw_Addon_Betty))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Dagger))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_01))
	|| (Npc_HasItems (hero, ItMw_1h_Bau_Axe))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Mace))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_03))
	|| (Npc_HasItems (hero, ItMw_1h_Bau_Mace))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Axe))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_04))
	|| (Npc_HasItems (hero, ItMw_ShortSword1))
	|| (Npc_HasItems (hero, ItMw_Nagelknueppel))
	|| (Npc_HasItems (hero, ItMw_1H_Sword_L_03))
	|| (Npc_HasItems (hero, ItMw_ShortSword2))
	|| (Npc_HasItems (hero, ItMw_Sense))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Nov_Mace))
	|| (Npc_HasItems (hero, ItMw_2h_Bau_Axe))
	|| (Npc_HasItems (hero, ItMw_2H_Axe_L_01))
	|| (Npc_HasItems (hero, ItMw_1h_MISC_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Misc_Axe))
	|| (Npc_HasItems (hero, ItMw_2H_Sword_M_01))
	|| (Npc_HasItems (hero, ItMw_1h_Mil_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Sld_Axe))
	|| (Npc_HasItems (hero, ItMw_1h_Sld_Sword))
	|| (Npc_HasItems (hero, ItMw_2h_Sld_Axe))
	|| (Npc_HasItems (hero, ItMw_2h_Sld_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Pal_Sword))
	|| (Npc_HasItems (hero, ItMw_2h_Pal_Sword))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_01))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_02))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_03))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_04))
	|| (Npc_HasItems (hero, ItMw_2H_OrcSword_01))
	|| (Npc_HasItems (hero, ItMw_2H_OrcSword_02))
	|| (Npc_HasItems (hero, ItMw_ShortSword3))
	|| (Npc_HasItems (hero, ItMw_Nagelkeule))
	|| (Npc_HasItems (hero, ItMw_ShortSword4))
	|| (Npc_HasItems (hero, ItMw_Kriegskeule))
	|| (Npc_HasItems (hero, ItMw_Richtstab))
	|| (Npc_HasItems (hero, ItMw_ShortSword5))
	|| (Npc_HasItems (hero, ItMw_Kriegshammer1))
	|| (Npc_HasItems (hero, ItMw_Hellebarde))
	|| (Npc_HasItems (hero, ItMw_Nagelkeule2))
	|| (Npc_HasItems (hero, ItMw_Schiffsaxt))
	|| (Npc_HasItems (hero, ItMw_Piratensaebel))
	|| (Npc_HasItems (hero, ItMw_Schwert))
	|| (Npc_HasItems (hero, ItMw_1H_Common_01))
	|| (Npc_HasItems (hero, ItMw_Stabkeule))
	|| (Npc_HasItems (hero, ItMw_Zweihaender1))
	|| (Npc_HasItems (hero, ItMw_Steinbrecher))
	|| (Npc_HasItems (hero, ItMw_Spicker))
	|| (Npc_HasItems (hero, ItMw_Streitaxt1))
	|| (Npc_HasItems (hero, ItMw_Schwert1))
	|| (Npc_HasItems (hero, ItMw_Schwert2))
	|| (Npc_HasItems (hero, ItMw_Doppelaxt))
	|| (Npc_HasItems (hero, ItMw_Bartaxt))
	|| (Npc_HasItems (hero, ItMw_Morgenstern))
	|| (Npc_HasItems (hero, ItMw_Schwert3))
	|| (Npc_HasItems (hero, ItMw_Schwert4))
	|| (Npc_HasItems (hero, ItMw_1H_Special_01))
	|| (Npc_HasItems (hero, ItMw_2H_Special_01))
	|| (Npc_HasItems (hero, ItMw_Rapier))
	|| (Npc_HasItems (hero, ItMw_Rubinklinge))
	|| (Npc_HasItems (hero, ItMw_Streitkolben))
	|| (Npc_HasItems (hero, ItMw_Zweihaender2))
	|| (Npc_HasItems (hero, ItMw_Runenschwert))
	|| (Npc_HasItems (hero, ItMw_Rabenschnabel))
	|| (Npc_HasItems (hero, ItMw_Schwert5))
	|| (Npc_HasItems (hero, ItMw_Inquisitor))
	|| (Npc_HasItems (hero, ItMw_Streitaxt2))
	|| (Npc_HasItems (hero, ItMw_Zweihaender3))
	|| (Npc_HasItems (hero, ItMw_1H_Special_02))
	|| (Npc_HasItems (hero, ItMw_2H_Special_02))
	|| (Npc_HasItems (hero, ItMw_ElBastardo))
	|| (Npc_HasItems (hero, ItMw_Kriegshammer2))
	|| (Npc_HasItems (hero, ItMw_Meisterdegen))
	|| (Npc_HasItems (hero, ItMw_Folteraxt))
	|| (Npc_HasItems (hero, ItMw_Orkschlaechter))
	|| (Npc_HasItems (hero, ItMw_Zweihaender4))
	|| (Npc_HasItems (hero, ItMw_Schlachtaxt))
	|| (Npc_HasItems (hero, ItMw_Krummschwert))
	|| (Npc_HasItems (hero, ItMw_Barbarenstreitaxt))
	|| (Npc_HasItems (hero, ItMw_Sturmbringer))
	|| (Npc_HasItems (hero, ItMw_1H_Special_03))
	|| (Npc_HasItems (hero, ItMw_2H_Special_03))
	|| (Npc_HasItems (hero, ItMw_Berserkeraxt))
	|| (Npc_HasItems (hero, ItMw_Drachenschneide))
	|| (Npc_HasItems (hero, ItMw_1H_Special_04))
	|| (Npc_HasItems (hero, ItMw_2H_Special_04))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_01))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_02))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_03))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_01))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_02))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_03))
	|| (Npc_HasItems (hero, ItMw_2h_Rod))
	|| (Npc_HasItems (hero, ItMw_AlriksSword_Mis))
	|| (Npc_HasItems (hero, Holy_Hammer_MIS))
	|| (Npc_HasItems (hero, ItMw_MalethsGehstock_MIS))
	|| (Npc_HasItems (hero, ItMW_1H_FerrosSword_Mis))
	{
		return TRUE;
	};
	return FALSE; 
};

func int C_ScHasEinhand()
{
	if (Npc_HasItems (hero, ItMw_BeliarWeapon_Raven )) //Joly: Ravens Waffe
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_20 )) 

	//------------------------------------------------
	|| (Npc_HasItems (hero, ItMW_Addon_Knife01))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_1h_01))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_1h_02))
	|| (Npc_HasItems (hero, ItMW_Addon_Keule_1h_01))
	|| (Npc_HasItems (hero, ItMw_FrancisDagger_Mis))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR1hAxe))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR1hSword))
	|| (Npc_HasItems (hero, ItMw_Addon_BanditTrader))
	|| (Npc_HasItems (hero, ItMw_Addon_Betty))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Dagger))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_01))
	|| (Npc_HasItems (hero, ItMw_1h_Bau_Axe))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Mace))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_03))
	|| (Npc_HasItems (hero, ItMw_1h_Bau_Mace))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Axe))
	|| (Npc_HasItems (hero, ItMw_1H_Mace_L_04))
	|| (Npc_HasItems (hero, ItMw_ShortSword1))
	|| (Npc_HasItems (hero, ItMw_Nagelknueppel))
	|| (Npc_HasItems (hero, ItMw_1H_Sword_L_03))
	|| (Npc_HasItems (hero, ItMw_ShortSword2))
	|| (Npc_HasItems (hero, ItMw_Sense))
	|| (Npc_HasItems (hero, ItMw_1h_Vlk_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Nov_Mace))
	|| (Npc_HasItems (hero, ItMw_1h_MISC_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Misc_Axe))
	|| (Npc_HasItems (hero, ItMw_1h_Mil_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Sld_Axe))
	|| (Npc_HasItems (hero, ItMw_1h_Sld_Sword))
	|| (Npc_HasItems (hero, ItMw_1h_Pal_Sword))
	|| (Npc_HasItems (hero, ItMw_ShortSword3))
	|| (Npc_HasItems (hero, ItMw_Nagelkeule))
	|| (Npc_HasItems (hero, ItMw_ShortSword4))
	|| (Npc_HasItems (hero, ItMw_Kriegskeule))
	|| (Npc_HasItems (hero, ItMw_ShortSword5))
	|| (Npc_HasItems (hero, ItMw_Kriegshammer1))
	|| (Npc_HasItems (hero, ItMw_Nagelkeule2))
	|| (Npc_HasItems (hero, ItMw_Piratensaebel))
	|| (Npc_HasItems (hero, ItMw_Schwert))
	|| (Npc_HasItems (hero, ItMw_1H_Common_01))
	|| (Npc_HasItems (hero, ItMw_Steinbrecher))
	|| (Npc_HasItems (hero, ItMw_Spicker))
	|| (Npc_HasItems (hero, ItMw_Schwert1))
	|| (Npc_HasItems (hero, ItMw_Schwert2))
	|| (Npc_HasItems (hero, ItMw_Morgenstern))
	|| (Npc_HasItems (hero, ItMw_Schwert3))
	|| (Npc_HasItems (hero, ItMw_Schwert4))
	|| (Npc_HasItems (hero, ItMw_1H_Special_01))
	|| (Npc_HasItems (hero, ItMw_Rapier))
	|| (Npc_HasItems (hero, ItMw_Rubinklinge))
	|| (Npc_HasItems (hero, ItMw_Streitkolben))
	|| (Npc_HasItems (hero, ItMw_Runenschwert))
	|| (Npc_HasItems (hero, ItMw_Rabenschnabel))
	|| (Npc_HasItems (hero, ItMw_Schwert5))
	|| (Npc_HasItems (hero, ItMw_Inquisitor))
	|| (Npc_HasItems (hero, ItMw_1H_Special_02))
	|| (Npc_HasItems (hero, ItMw_ElBastardo))
	|| (Npc_HasItems (hero, ItMw_Meisterdegen))
	|| (Npc_HasItems (hero, ItMw_Folteraxt))
	|| (Npc_HasItems (hero, ItMw_Orkschlaechter))
	|| (Npc_HasItems (hero, ItMw_1H_Special_03))
	|| (Npc_HasItems (hero, ItMw_1H_Special_04))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_01))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_02))
	|| (Npc_HasItems (hero, ItMw_1H_Blessed_03))
	|| (Npc_HasItems (hero, ItMw_AlriksSword_Mis))
	|| (Npc_HasItems (hero, Holy_Hammer_MIS))
	|| (Npc_HasItems (hero, ItMw_MalethsGehstock_MIS))
	|| (Npc_HasItems (hero, ItMW_1H_FerrosSword_Mis))
	{
		return TRUE;
	};
	return FALSE; 
};

func int C_ScHasZweihand()
{
	if (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_20 )) 
	|| (Npc_HasItems (hero, ItMW_Addon_Stab01))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab02))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab03))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab04))
	|| (Npc_HasItems (hero, ItMW_Addon_Stab05))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_2h_01))
	|| (Npc_HasItems (hero, ItMW_Addon_Hacker_2h_02))
	|| (Npc_HasItems (hero, ItMW_Addon_Keule_2h_01))
	|| (Npc_HasItems (hero, ItMw_RangerStaff_Addon))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR2hAxe))
	|| (Npc_HasItems (hero, ItMw_Addon_PIR2hSword))
	|| (Npc_HasItems (hero, ItMw_2h_Bau_Axe))
	|| (Npc_HasItems (hero, ItMw_2H_Axe_L_01))
	|| (Npc_HasItems (hero, ItMw_2H_Sword_M_01))
	|| (Npc_HasItems (hero, ItMw_2h_Sld_Axe))
	|| (Npc_HasItems (hero, ItMw_2h_Sld_Sword))
	|| (Npc_HasItems (hero, ItMw_2h_Pal_Sword))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_01))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_02))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_03))
	|| (Npc_HasItems (hero, ItMw_2H_OrcAxe_04))
	|| (Npc_HasItems (hero, ItMw_2H_OrcSword_01))
	|| (Npc_HasItems (hero, ItMw_2H_OrcSword_02))
	|| (Npc_HasItems (hero, ItMw_Richtstab))
	|| (Npc_HasItems (hero, ItMw_Kriegshammer1))
	|| (Npc_HasItems (hero, ItMw_Hellebarde))
	|| (Npc_HasItems (hero, ItMw_Schiffsaxt))
	|| (Npc_HasItems (hero, ItMw_Stabkeule))
	|| (Npc_HasItems (hero, ItMw_Zweihaender1))
	|| (Npc_HasItems (hero, ItMw_Doppelaxt))
	|| (Npc_HasItems (hero, ItMw_Bartaxt))
	|| (Npc_HasItems (hero, ItMw_2H_Special_01))
	|| (Npc_HasItems (hero, ItMw_Zweihaender2))
	|| (Npc_HasItems (hero, ItMw_Streitaxt2))
	|| (Npc_HasItems (hero, ItMw_Zweihaender3))
	|| (Npc_HasItems (hero, ItMw_2H_Special_02))
	|| (Npc_HasItems (hero, ItMw_ElBastardo))
	|| (Npc_HasItems (hero, ItMw_Kriegshammer2))
	|| (Npc_HasItems (hero, ItMw_Folteraxt))
	|| (Npc_HasItems (hero, ItMw_Zweihaender4))
	|| (Npc_HasItems (hero, ItMw_Schlachtaxt))
	|| (Npc_HasItems (hero, ItMw_Krummschwert))
	|| (Npc_HasItems (hero, ItMw_Barbarenstreitaxt))
	|| (Npc_HasItems (hero, ItMw_2H_Special_03))
	|| (Npc_HasItems (hero, ItMw_Berserkeraxt))
	|| (Npc_HasItems (hero, ItMw_Drachenschneide))
	|| (Npc_HasItems (hero, ItMw_2H_Special_04))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_01))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_02))
	|| (Npc_HasItems (hero, ItMw_2H_Blessed_03))
	|| (Npc_HasItems (hero, ItMw_2h_Rod))
	{
		return TRUE;
	};
	return FALSE; 
};	

func int C_ScHasBeliarsWeapon ()
{	
	if (Npc_HasItems (hero, ItMw_BeliarWeapon_Raven )) //Joly: Ravens Waffe
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_1H_20 )) 

	//------------------------------------------------

	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_01 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_02 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_03 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_04 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_05 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_06 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_07 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_08 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_09 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_10 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_11 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_12 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_13 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_14 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_15 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_16 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_17 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_18 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_19 )) 
	|| (Npc_HasItems (hero, ItMw_BeliarWeapon_2H_20 )) 

	//------------------------------------------------
	|| (C_ScHasBeliarsRune())
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};	
// *********************
// C_IsItemBeliarsWeapon
// *********************
func int C_IsItemFernkampfwaffe(var C_ITEM Weap)
{
	if (Hlp_IsItem(Weap, ItRw_Addon_MagicBow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Addon_FireBow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Addon_MagicCrossbow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Mil_Crossbow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Sld_Bow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_L_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_M_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_03_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_DragomirsArmbrust_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_SengrathsArmbrust_MIS) == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};

func int C_IsItemBogen(var C_ITEM Weap)
{
	if (Hlp_IsItem(Weap, ItRw_Addon_MagicBow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Addon_FireBow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Sld_Bow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_M_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Bow_L_03_MIS) == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};

func int C_IsItemArmbrust(var C_ITEM Weap)
{
	if (Hlp_IsItem(Weap, ItRw_Addon_MagicCrossbow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Mil_Crossbow) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_L_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_M_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_Crossbow_H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_DragomirsArmbrust_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItRw_SengrathsArmbrust_MIS) == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};

func int C_IsItemNahkampfwaffe(var C_ITEM Weap)
{
	
	if (Hlp_IsItem(Weap, ItMw_BeliarWeapon_Raven ) == TRUE) //Joly: Ravens Waffe
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_01 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_02 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_03 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_04 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_05 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_06 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_07 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_08 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_09 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_10 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_11 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_12 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_13 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_14 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_15 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_16 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_17 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_18 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_19 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_20 ) == TRUE) 

	//------------------------------------------------

	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_01 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_02 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_03 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_04 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_05 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_06 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_07 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_08 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_09 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_10 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_11 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_12 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_13 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_14 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_15 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_16 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_17 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_18 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_19 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_20 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMW_Addon_Knife01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_1h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_1h_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_2h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_2h_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Keule_1h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Keule_2h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_FrancisDagger_Mis) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_RangerStaff_Addon) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR2hAxe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR2hSword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR1hAxe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR1hSword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_BanditTrader) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_Betty) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Dagger) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Bau_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Bau_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelknueppel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Sword_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Sense) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Nov_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Bau_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Axe_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_MISC_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Misc_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Sword_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Mil_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Sld_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Sld_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Sld_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Sld_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Pal_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Pal_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcSword_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcSword_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelkeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Kriegskeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Richtstab) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword5) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Kriegshammer1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Hellebarde) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelkeule2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schiffsaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Piratensaebel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Common_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Stabkeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Steinbrecher) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Spicker) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitaxt1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Doppelaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Bartaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Morgenstern) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rapier) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rubinklinge) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitkolben) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Runenschwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rabenschnabel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert5) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Inquisitor) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitaxt2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ElBastardo) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Kriegshammer2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Meisterdegen) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Folteraxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Orkschlaechter) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schlachtaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Krummschwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Barbarenstreitaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Sturmbringer) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Berserkeraxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Drachenschneide) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Rod) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_AlriksSword_Mis) == TRUE)
	|| (Hlp_IsItem(Weap, Holy_Hammer_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_MalethsGehstock_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_1H_FerrosSword_Mis) == TRUE)
	{
		return TRUE;
	};

	return FALSE;
};

func int C_IsItemEinhand(var C_ITEM Weap)
{
	
	if (Hlp_IsItem(Weap, ItMw_BeliarWeapon_Raven ) == TRUE) //Joly: Ravens Waffe
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_01 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_02 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_03 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_04 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_05 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_06 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_07 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_08 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_09 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_10 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_11 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_12 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_13 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_14 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_15 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_16 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_17 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_18 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_19 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_20 ) == TRUE) 

	//------------------------------------------------

	|| (Hlp_IsItem(Weap, ItMW_Addon_Knife01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_1h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_1h_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Keule_1h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_FrancisDagger_Mis) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR1hAxe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR1hSword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_BanditTrader) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_Betty) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Dagger) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Bau_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Bau_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Mace_L_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelknueppel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Sword_L_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Sense) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Vlk_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Nov_Mace) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_MISC_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Misc_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Mil_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Sld_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Sld_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1h_Pal_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelkeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Kriegskeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ShortSword5) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Nagelkeule2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Piratensaebel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Common_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Steinbrecher) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Spicker) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitaxt1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Morgenstern) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rapier) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rubinklinge) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitkolben) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Runenschwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Rabenschnabel) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schwert5) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Inquisitor) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Meisterdegen) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Orkschlaechter) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Special_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_1H_Blessed_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_AlriksSword_Mis) == TRUE)
	|| (Hlp_IsItem(Weap, Holy_Hammer_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_MalethsGehstock_MIS) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_1H_FerrosSword_Mis) == TRUE)
	{
		return TRUE;
	};

	return FALSE;
};

func int C_IsItemZweihand(var C_ITEM Weap)
{
	
	if (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_01 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_02 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_03 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_04 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_05 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_06 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_07 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_08 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_09 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_10 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_11 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_12 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_13 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_14 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_15 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_16 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_17 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_18 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_19 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_20 ) == TRUE) 
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Stab05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_2h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Hacker_2h_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMW_Addon_Keule_2h_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_RangerStaff_Addon) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR2hAxe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Addon_PIR2hSword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Bau_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Axe_L_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Sword_M_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Sld_Axe) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Sld_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Pal_Sword) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcAxe_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcSword_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_OrcSword_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Richtstab) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Hellebarde) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schiffsaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Stabkeule) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitaxt1) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Doppelaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Bartaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Streitaxt2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender3) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_ElBastardo) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Kriegshammer2) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Zweihaender4) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Schlachtaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Krummschwert) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Barbarenstreitaxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Sturmbringer) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Berserkeraxt) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_Drachenschneide) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Special_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2H_Blessed_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_2h_Rod) == TRUE)
	{
		return TRUE;
	};

	return FALSE;
};

func int C_IsItemBeliarsWeapon(var C_ITEM Weap)
{	
	if (Hlp_IsItem(Weap, ItMw_BeliarWeapon_Raven) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_06) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_07) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_08) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_09) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_10) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_11) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_12) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_13) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_14) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_15) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_16) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_17) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_18) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_19) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_20) == TRUE)

	//------------------------------------------------------

	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_06) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_07) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_08) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_09) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_10) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_11) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_12) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_13) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_14) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_15) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_16) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_17) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_18) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_19) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_20) == TRUE)


	//------------------------------------------------------

	|| (Hlp_IsItem(Weap, ItRu_BeliarsRage) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SuckEnergy) 		== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_GreenTentacle) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_Swarm) 			== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_Skull) 			== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SummonZombie) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SummonGuardian) 	== TRUE)
	{
		return TRUE;
	};

	return FALSE; //DEFAULT
};	

// ***************************
// C_ScHasReadiedBeliarsWeapon
// ***************************
func int C_ScHasReadiedBeliarsWeapon ()
{	
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);
	
	if (C_IsItemBeliarsWeapon(ReadyWeap))
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};

func int C_ScHasReadiedFernkampfwaffe()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemFernkampfwaffe(ReadyWeap))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasReadiedBogen()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemBogen(ReadyWeap))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasReadiedArmbrust()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemArmbrust(ReadyWeap))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasReadiedEinhand()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemEinhand(ReadyWeap))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasReadiedZweihand()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemZweihand(ReadyWeap))
	{
		return TRUE;
	};
	return FALSE;
};

func int C_ScHasReadiedNahkampfwaffe()
{
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);

	if (C_IsItemNahkampfwaffe(ReadyWeap))
	{
		return TRUE;
	};

	return FALSE;
};
// ****************************
// C_ScHasEquippedBeliarsWeapon
// ****************************
func int C_ScHasEquippedBeliarsWeapon () //NUR Nahkampf!
{	
	var C_ITEM EquipWeap; EquipWeap = Npc_GetEquippedMeleeWeapon(hero);
	
	if (C_IsItemBeliarsWeapon(EquipWeap))
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};

func int C_ScHasEquippedNahkampfwaffe () //NUR Nahkampf!
{	
	var C_ITEM EquipWeap; EquipWeap = Npc_GetEquippedMeleeWeapon(hero);
	
	if (C_IsItemNahkampfwaffe(EquipWeap))
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};
// ********************
// B_ClearBeliarsWeapon
// ********************
func void B_ClearBeliarsWeapon ()
{	
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_Raven 		, Npc_HasItems (hero, ItMw_BeliarWeapon_Raven ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_01 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_01 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_02 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_02 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_03 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_03 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_04 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_04 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_05 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_05 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_06 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_06 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_07 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_07 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_08 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_08 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_09 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_09 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_10 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_10 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_11 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_11 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_12 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_12 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_13 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_13 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_14 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_14 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_15 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_15 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_16 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_16 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_17 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_17 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_18 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_18 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_19 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_19 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_1H_20 		, Npc_HasItems (hero, ItMw_BeliarWeapon_1H_20 ));

	//------------------------------------------------------

	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_01 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_01 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_02 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_02 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_03 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_03 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_04 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_04 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_05 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_05 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_06 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_06 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_07 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_07 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_08 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_08 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_09 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_09 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_10 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_10 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_11 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_11 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_12 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_12 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_13 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_13 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_14 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_14 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_15 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_15 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_16 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_16 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_17 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_17 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_18 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_18 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_19 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_19 ));
	Npc_RemoveInvItems	(hero ,ItMw_BeliarWeapon_2H_20 		, Npc_HasItems (hero, ItMw_BeliarWeapon_2H_20 ));

	//------------------------------------------------------

	/*Npc_RemoveInvItems	(hero ,ItRu_BeliarsRage 	, Npc_HasItems (hero, ItRu_BeliarsRage ));
	Npc_RemoveInvItems	(hero ,ItRu_SuckEnergy 		, Npc_HasItems (hero, ItRu_SuckEnergy ));
	Npc_RemoveInvItems	(hero ,ItRu_GreenTentacle 	, Npc_HasItems (hero, ItRu_GreenTentacle ));
	Npc_RemoveInvItems	(hero ,ItRu_Swarm 			, Npc_HasItems (hero, ItRu_Swarm ));
	Npc_RemoveInvItems	(hero ,ItRu_Skull 			, Npc_HasItems (hero, ItRu_Skull ));
	Npc_RemoveInvItems	(hero ,ItRu_SummonZombie 	, Npc_HasItems (hero, ItRu_SummonZombie ));
	Npc_RemoveInvItems	(hero ,ItRu_SummonGuardian 	, Npc_HasItems (hero, ItRu_SummonGuardian ));*/
};	

var int BeliarWeapCurrentLvL;
var int BeliarWeapNextLvL;
var int BeliarNextDamageChance;
               
func int C_ScCanUpgrateBeliarsWeapon ()
{
	var int herolvl;
	herolvl = hero.level;
	
	if 		(herolvl > 46)	{	BeliarWeapNextLvL = 20;	BeliarNextDamageChance = BeliarDamageChance_20; }	
	else if (herolvl > 44)	{	BeliarWeapNextLvL = 19;	BeliarNextDamageChance = BeliarDamageChance_19; }
	else if (herolvl > 42)	{	BeliarWeapNextLvL = 18;	BeliarNextDamageChance = BeliarDamageChance_18; }
	else if (herolvl > 40)	{	BeliarWeapNextLvL = 17;	BeliarNextDamageChance = BeliarDamageChance_17; }
	else if (herolvl > 38)	{	BeliarWeapNextLvL = 16;	BeliarNextDamageChance = BeliarDamageChance_16; }
	else if (herolvl > 36)	{	BeliarWeapNextLvL = 15;	BeliarNextDamageChance = BeliarDamageChance_15; }
	else if (herolvl > 34)	{	BeliarWeapNextLvL = 14;	BeliarNextDamageChance = BeliarDamageChance_14; }
	else if (herolvl > 32)	{	BeliarWeapNextLvL = 13;	BeliarNextDamageChance = BeliarDamageChance_13; }
	else if (herolvl > 30)	{	BeliarWeapNextLvL = 12;	BeliarNextDamageChance = BeliarDamageChance_12; }
	else if (herolvl > 28)	{	BeliarWeapNextLvL = 11;	BeliarNextDamageChance = BeliarDamageChance_11; }
	else if (herolvl > 26)	{	BeliarWeapNextLvL = 10;	BeliarNextDamageChance = BeliarDamageChance_10; }
	else if (herolvl > 24)	{	BeliarWeapNextLvL = 9;	BeliarNextDamageChance = BeliarDamageChance_09; }
	else if (herolvl > 22)	{	BeliarWeapNextLvL = 8;	BeliarNextDamageChance = BeliarDamageChance_08; }
	else if (herolvl > 20)	{	BeliarWeapNextLvL = 7;	BeliarNextDamageChance = BeliarDamageChance_07; }
	else if (herolvl > 18)	{	BeliarWeapNextLvL = 6;	BeliarNextDamageChance = BeliarDamageChance_06; }
	else if (herolvl > 16)	{	BeliarWeapNextLvL = 5;	BeliarNextDamageChance = BeliarDamageChance_05; }
	else if (herolvl > 14)	{	BeliarWeapNextLvL = 4;	BeliarNextDamageChance = BeliarDamageChance_04; }
	else if (herolvl > 12)	{	BeliarWeapNextLvL = 3;	BeliarNextDamageChance = BeliarDamageChance_03; }
	else if (herolvl > 10)	{	BeliarWeapNextLvL = 2;	BeliarNextDamageChance = BeliarDamageChance_02; }
	else if (herolvl <= 10) {	BeliarWeapNextLvL = 1;	BeliarNextDamageChance = BeliarDamageChance_01; };
		
	if (BeliarWeapCurrentLvL < BeliarWeapNextLvL)
	{
		//BeliarsWeaponSpecialDamage = (herolvl * 2);
		return TRUE;
	};
};
func void B_UpgrateBeliarsWeapon ()//Joly: vorher C_ScCanUpgrateBeliarsWeapon ausführen!!!!!!
{
	////////////////////////////////////////////////////////////////////////////////////////////
	//// LebensenergieAbzug beim Upgraden
	////////////////////////////////////////////////////////////////////////////////////////////
		var int BeliarsTribute;
		var string concatText;
		
		BeliarsTribute = ((BeliarWeapNextLvL - BeliarWeapCurrentLvL)*5);
		
		hero.attribute[ATR_HITPOINTS_MAX] = (hero.attribute[ATR_HITPOINTS_MAX] - BeliarsTribute);
	
		if (BeliarsTribute > 0)
		{
			concatText = ConcatStrings(PRINT_Beliarshitpoints_MAX, IntToString(BeliarsTribute));
			PrintScreen	(concatText, -1, -1, FONT_Screen, 4);
		};
	////////////////////////////////////////////////////////////////////////////////////////////

	BeliarDamageChance = BeliarNextDamageChance;
	BeliarWeapCurrentLvL = BeliarWeapNextLvL;

	if((hero.HitChance[NPC_TALENT_1H]) > (hero.HitChance[NPC_TALENT_2H]))
	{
		if 	 	(BeliarWeapCurrentLvL <= 1){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_01);}
		else if (BeliarWeapCurrentLvL == 2){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_02);}
		else if (BeliarWeapCurrentLvL == 3){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_03);}
		else if (BeliarWeapCurrentLvL == 4){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_04);}
		else if (BeliarWeapCurrentLvL == 5){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_05);}
		else if (BeliarWeapCurrentLvL == 6){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_06);}
		else if (BeliarWeapCurrentLvL == 7){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_07);}
		else if (BeliarWeapCurrentLvL == 8){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_08);}
		else if (BeliarWeapCurrentLvL == 9){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_09);}
		else if (BeliarWeapCurrentLvL == 10){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_10);}
		else if (BeliarWeapCurrentLvL == 11){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_11);}
		else if (BeliarWeapCurrentLvL == 12){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_12);}
		else if (BeliarWeapCurrentLvL == 13){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_13);}
		else if (BeliarWeapCurrentLvL == 14){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_14);}
		else if (BeliarWeapCurrentLvL == 15){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_15);}
		else if (BeliarWeapCurrentLvL == 16){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_16);}
		else if (BeliarWeapCurrentLvL == 17){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_17);}
		else if (BeliarWeapCurrentLvL == 18){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_18);}
		else if (BeliarWeapCurrentLvL == 19){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_19);}
		else if (BeliarWeapCurrentLvL == 20){CreateInvItem	(hero, ItMw_BeliarWeapon_1H_20);};
			
		Wld_PlayEffect("spellFX_BeliarsWeapon_Upgrate",  self, self, 0, 0, 0, FALSE );      
		Snd_Play ("CS_Prayer_WaveOfInsanity");
		BeliarsWeaponUpgrated = TRUE;
	}
	else //SC is 2H Fighter
	{
		if 	 	(BeliarWeapCurrentLvL <= 1){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_01);}
		else if (BeliarWeapCurrentLvL == 2){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_02);}
		else if (BeliarWeapCurrentLvL == 3){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_03);}
		else if (BeliarWeapCurrentLvL == 4){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_04);}
		else if (BeliarWeapCurrentLvL == 5){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_05);}
		else if (BeliarWeapCurrentLvL == 6){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_06);}
		else if (BeliarWeapCurrentLvL == 7){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_07);}
		else if (BeliarWeapCurrentLvL == 8){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_08);}
		else if (BeliarWeapCurrentLvL == 9){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_09);}
		else if (BeliarWeapCurrentLvL == 10){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_10);}
		else if (BeliarWeapCurrentLvL == 11){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_11);}
		else if (BeliarWeapCurrentLvL == 12){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_12);}
		else if (BeliarWeapCurrentLvL == 13){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_13);}
		else if (BeliarWeapCurrentLvL == 14){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_14);}
		else if (BeliarWeapCurrentLvL == 15){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_15);}
		else if (BeliarWeapCurrentLvL == 16){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_16);}
		else if (BeliarWeapCurrentLvL == 17){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_17);}
		else if (BeliarWeapCurrentLvL == 18){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_18);}
		else if (BeliarWeapCurrentLvL == 19){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_19);}
		else if (BeliarWeapCurrentLvL == 20){CreateInvItem	(hero, ItMw_BeliarWeapon_2H_20);};
	
		Wld_PlayEffect("spellFX_BeliarsWeapon_Upgrate",  self, self, 0, 0, 0, FALSE );      
		Snd_Play ("CS_Prayer_WaveOfInsanity");
		BeliarsWeaponUpgrated = TRUE;
	};
};	

// *********************
// C_IsItemBeliarsWeapon
// *********************	

// ***************************
// C_ScHasReadiedBeliarsWeapon
// ***************************

// ****************************
// C_ScHasEquippedBeliarsWeapon
// ****************************
