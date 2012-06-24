//***************************
//	Swampshark Prototype	
//***************************

PROTOTYPE Mst_Default_Swampshark(C_Npc)			
{
	//----- Monster ----
	name							=	"Sumpfhai";
	guild							=	GIL_SWAMPSHARK;
	aivar[AIV_MM_REAL_ID]			= 	ID_SWAMPSHARK;
	level							=	29;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	240;
	attribute	[ATR_DEXTERITY]		=	240;
	attribute	[ATR_HITPOINTS_MAX]	=	450;
	attribute	[ATR_HITPOINTS]		=	450;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	255;
	protection	[PROT_EDGE]			=	255;
	protection	[PROT_POINT]		=	255;
	protection	[PROT_FIRE]			=	255;
	protection	[PROT_FLY]			=	255;
	protection	[PROT_MAGIC]		=	225;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SWAMPSHARK;

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


//***************
//	Visuals
//***************


func void B_SetVisuals_Swampshark()
{
	Mdl_SetVisual			(self,	"Swampshark.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Swa_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Swampshark    														**
*************************************************************************/

INSTANCE Swampshark	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
};

INSTANCE Swampshark_01	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_02	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_03	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_04	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_05	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_06	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_07	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_08	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_09	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Swampshark_10	(Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
/*************************************************************************
**	Swampshark  Mission Logan Sumpfhaijagd (MIS_HlpLogan)  														**
*************************************************************************/
INSTANCE MIS_Addon_Swampshark_01	(Mst_Default_Swampshark)
{
	
	level							=	20;
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;

	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	
};
INSTANCE MIS_Addon_Swampshark_02	(Mst_Default_Swampshark)
{
	level							=	20;
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;

	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
};
INSTANCE MIS_Addon_Swampshark_03	(Mst_Default_Swampshark)
{
	level							=	20;
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;

	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
};
INSTANCE MIS_Addon_Swampshark_Lou	(Mst_Default_Swampshark)
{	
	B_SetVisuals_Swampshark();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITKE_Addon_Tavern_01,1);
};
