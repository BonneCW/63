//***************************
//	Molerat Prototype	
//***************************

PROTOTYPE Mst_Default_Swamprat (C_Npc)			
{
	//----- Monster ----
	name							=	"Sumpfratte";
	guild							=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]			= 	ID_SWAMPRAT;
	level							=	18;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	230;
	attribute	[ATR_DEXTERITY]		=	130;
	attribute	[ATR_HITPOINTS_MAX]	=	230;
	attribute	[ATR_HITPOINTS]		=	230;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----	
	protection	[PROT_BLUNT]		=	145;
	protection	[PROT_EDGE]			=	145;
	protection	[PROT_POINT]		=	125;		
	protection	[PROT_FIRE]			=	145;
	protection	[PROT_FLY]			=	145;
	protection	[PROT_MAGIC]		=	115;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_MOLERAT;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Swamprat ()
{
	Mdl_SetVisual			(self,	"Swamprat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Swamprat_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
	//Mdl_SetModelScale(self, 1.3, 1.3, 1);
};


//*****************
//	Molerat	
//*****************
INSTANCE Swamprat	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
};

INSTANCE Swamprat_01	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_02	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_03	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_04	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_05	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_06	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_07	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_08	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_09	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swamprat_10	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
