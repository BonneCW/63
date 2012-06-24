//**************************
//	Icegolem Prototype	
//**************************

PROTOTYPE Mst_Default_IceGolem(C_Npc)			
{
	//----- Monster ----
	name							=	"Eisgolem";
	guild							=	GIL_ICEGOLEM;
	aivar[AIV_MM_REAL_ID]			= 	ID_ICEGOLEM;
	level							=	47;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	360;
	attribute	[ATR_DEXTERITY]		=	460;
	attribute	[ATR_HITPOINTS_MAX]	=	890;
	attribute	[ATR_HITPOINTS]		=	890;
	attribute	[ATR_MANA_MAX] 		=	1000;
	attribute	[ATR_MANA] 			=	1000;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	465;
	protection	[PROT_EDGE]			=	465;
	protection	[PROT_POINT]		=	465;
	protection	[PROT_FIRE]			=	465;
	protection	[PROT_FLY]			=	465;
	protection	[PROT_MAGIC]		=	465;
	
	//----- Damage Types ----
	damagetype 						=	DAM_MAGIC;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGOLEM;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//************
//	Visuals
//************

func void B_SetVisuals_IceGolem()
{
	Mdl_SetVisual			(self,	"Golem.mds");
	Mdl_ApplyOverlayMds 	(self,	"Golem_Icegolem.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gol_Ice_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};



//***************
//	Ice Golem   
//***************
INSTANCE IceGolem	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
};

INSTANCE IceGolem_01	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_02	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_03	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_04	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_05	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_06	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_07	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_08	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_09	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE IceGolem_10	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

//*******************
//	Ice Golem  Sylvio 
//*******************
INSTANCE IceGolem_Sylvio1	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
};

INSTANCE IceGolem_Sylvio2	(Mst_Default_IceGolem)
{
	B_SetVisuals_IceGolem();
	Npc_SetToFistMode(self);
};
