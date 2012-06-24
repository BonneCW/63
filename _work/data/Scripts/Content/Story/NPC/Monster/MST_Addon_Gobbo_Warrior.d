//*************************
//	BlackGobbo Prototype	
//*************************

PROTOTYPE Mst_Default_Gobbo_Warrior (C_NPC)			
{
	//----- Monster ----
	name							=	"Goblin - Krieger";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_BLACK;
	level							=	24;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	190;
	attribute	[ATR_DEXTERITY]		=	190;
	attribute	[ATR_HITPOINTS_MAX]	=	350;
	attribute	[ATR_HITPOINTS]		=	350;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	205;
	protection	[PROT_EDGE]			=	205;
	protection	[PROT_POINT]		=	205;
	protection	[PROT_FIRE]			=	205;
	protection	[PROT_FLY]			=	205;
	protection	[PROT_MAGIC]		=	175;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior ()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		2,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Warrior_Visir ()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		3,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Warrior (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};
// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Warrior_Visir (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
};

INSTANCE Gobbo_Warrior_Visir_01 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_02 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_03 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_04 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_05 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_06 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_07 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_08 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_09 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Warrior_Visir_10 (Mst_Default_Gobbo_Warrior)
{
	B_SetVisuals_Gobbo_Warrior_Visir();
	
	Npc_SetToFightMode (self, ItMw_1h_Misc_Axe); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
	Mdl_SetModelScale(self, 1.15, 1.15, 1.15);
	
	B_SetSchwierigkeit(self);
};

