//************************************
//	Shadowbeast-Skeleton PROTOTYPE
//************************************

PROTOTYPE Mst_Default_Shadowbeast_Skeleton(C_Npc)			
{
	//----- Monster ----
	name							=	"Schattenläuferskelett";
	guild							=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SHADOWBEAST_SKELETON;
	level							=	51;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	580;
	attribute	[ATR_DEXTERITY]		=	580;
	attribute	[ATR_HITPOINTS_MAX]	=	1130;
	attribute	[ATR_HITPOINTS]		=	1130;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	585;
	protection	[PROT_EDGE]			=	585;
	protection	[PROT_POINT]		=	585;
	protection	[PROT_FIRE]			=	585;
	protection	[PROT_FLY]			=	585;
	protection	[PROT_MAGIC]		=	555;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SHADOWBEAST;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

//************
//	Visuals
//************

func void B_SetVisuals_Shadowbeast_Skeleton()
{
	Mdl_SetVisual			(self, "Shadow.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self, "Shadowbeast_Skeleton_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************************
//	Shadowbeast_Skeleton    	
//*****************************

INSTANCE Shadowbeast_Skeleton	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
};

INSTANCE Shadowbeast_Skeleton_01	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_02	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_03	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_04	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_05	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_06	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_07	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_08	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_09	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Shadowbeast_Skeleton_10	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

//*****************************
//	Shadowbeast_Skeleton_Angar    	
//*****************************

INSTANCE Shadowbeast_Skeleton_Angar	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
};
