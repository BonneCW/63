//********************
//	Keiler Prototype														
//********************

PROTOTYPE Mst_Default_Keiler(C_Npc)			
{
	//----- Monster ----
	name							=	"Keiler";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_Keiler;
	level							=	12;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	165;
	attribute	[ATR_DEXTERITY]		=	75;
	attribute	[ATR_HITPOINTS_MAX]	=	120;
	attribute	[ATR_HITPOINTS]		=	120;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	85;
	protection	[PROT_EDGE]			=	85;
	protection	[PROT_POINT]		=	60;
	protection	[PROT_FIRE]			=	85;
	protection	[PROT_FLY]			=	85;
	protection	[PROT_MAGIC]		=	60;

	//---- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_WOLF;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;	
};


//************
//	Visuals
//************


func void B_SetVisuals_Keiler()
{
	Mdl_SetVisual			(self,"Keiler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Keiler_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Keiler    	
//************

INSTANCE Keiler	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
};

INSTANCE Keiler_01	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_02	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_03	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_04	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_05	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_06	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_07	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_08	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_09	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Keiler_10	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

