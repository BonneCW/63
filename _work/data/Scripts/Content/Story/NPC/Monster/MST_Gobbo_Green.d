// *********************
// Gobbo_Green Prototype
// *********************

prototype Mst_Default_Gobbo_Green (C_NPC)			
{
	// ------ Monster -----
	name							=	"Goblin";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_GREEN;
	level							=	8;
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	105;
	attribute	[ATR_DEXTERITY]		=	35;
	attribute	[ATR_HITPOINTS_MAX]	=	60;
	attribute	[ATR_HITPOINTS]		=	60;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	40;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	40;
	protection	[PROT_FLY]			=	40;
	protection	[PROT_MAGIC]		=	0;

	// ------ Damage Types ------						//entweder EIN damagetype oder mehrere damage[x], die dann addiert werden und getrennten Rüstungsabzug bekommen
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	// ------ Kampf-Taktik ------
	fight_tactic	=	FAI_GOBBO;
	
	// ------ senses & ranges ------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	// ------ Daily Routine ------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


// *****************
// 		Visuals
// *****************

func void B_SetVisuals_Gobbo_Green()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


// ***********
// Green Gobbo
// ***********

INSTANCE Gobbo_Green (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Green_01 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_02 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_03 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_04 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_05 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_06 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_07 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_08 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_09 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Green_10 (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};


// *****************
// Young Green Gobbo
// *****************

INSTANCE YGobbo_Green (Mst_Default_Gobbo_Green)
{
	level							=	3;
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE YGobbo_Green_01 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_02 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_03 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_04 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_05 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_06 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_07 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_08 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_09 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};

INSTANCE YGobbo_Green_10 (Mst_Default_Gobbo_Green)
{
	level							=	1;

	name	= "Junger Goblin";
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	2;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	5;
	attribute	[ATR_HITPOINTS]		=	5;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)

	B_SetSchwierigkeit(self);
};