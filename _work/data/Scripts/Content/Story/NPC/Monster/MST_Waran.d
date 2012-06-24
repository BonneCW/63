//**********************
//	Waran Prototype		
//**********************

PROTOTYPE Mst_Default_Waran(C_Npc)			
{
	//----- Monster ----
	name							=	"Waran";
	guild							=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]			= 	ID_WARAN;
	level							=	25;
	
	//----- Attributes ----
	attribute	[ATR_STRENGTH]		=	200;
	attribute	[ATR_DEXTERITY]		=	200;
	attribute	[ATR_HITPOINTS_MAX]	=	370;
	attribute	[ATR_HITPOINTS]		=	370;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	215;
	protection	[PROT_EDGE]			=	215;
	protection	[PROT_POINT]		=	215;
	protection	[PROT_FIRE]			=	215;
	protection	[PROT_FLY]			=	215;
	protection	[PROT_MAGIC]		=	185;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_WARAN;

	//----- Sense & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

//************
//	Visuals
//************

func void B_SetVisuals_Waran()
{
	Mdl_SetVisual			(self,	"Waran.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"War_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//**************
//	Waran    	
//**************

INSTANCE Waran	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
};

INSTANCE Waran_01	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_02	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_03	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_04	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_05	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_06	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_07	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_08	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_09	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Waran_10	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

//Addon


INSTANCE BeachWaran1	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
};


INSTANCE BeachWaran2	(Mst_Default_Waran)
{
	B_SetVisuals_Waran();
	Npc_SetToFistMode(self);
};



