//*************************
//	Eiswolf Prototype
//*************************

PROTOTYPE Mst_Default_Icewolf(C_Npc)			
{
	//----- Monster ----
	name							=	"Eiswolf";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_Icewolf;
	level							=	22;		
	
	//----- Attributes ----
	attribute	[ATR_STRENGTH]		=	170;
	attribute	[ATR_DEXTERITY]		=	170;
	attribute	[ATR_HITPOINTS_MAX]	=	310;	
	attribute	[ATR_HITPOINTS]		=	310;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	185;
	protection	[PROT_EDGE]			=	185;
	protection	[PROT_POINT]		=	170;
	protection	[PROT_FIRE]			=	185;
	protection	[PROT_FLY]			=	185;
	protection	[PROT_MAGIC]		=	155;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
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


//*************
//	Visuals
//*************


func void B_SetVisuals_Icewolf()
{
	Mdl_SetVisual			(self, "Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"SnoWol_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Eiswolf
//************

INSTANCE Icewolf	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
};

INSTANCE Icewolf_01	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_02	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_03	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_04	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_05	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_06	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_07	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_08	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_09	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Icewolf_10	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
