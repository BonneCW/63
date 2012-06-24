//********************************
//	DragonSnapper Prototype			
//********************************

PROTOTYPE Mst_Default_DragonSnapper(C_Npc)			
{
	//----- Monster ----
	name							=	"Drachen-Snapper";
	guild							=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]			= 	ID_DRAGONSNAPPER;
	level							=	37;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	420; 
	attribute	[ATR_DEXTERITY]		=	320;
	attribute	[ATR_HITPOINTS_MAX]	=	610;
	attribute	[ATR_HITPOINTS]		=	610;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//------ Protections ----	
	protection	[PROT_BLUNT]		=	325;
	protection	[PROT_EDGE]			=	325;
	protection	[PROT_POINT]		=	325;		
	protection	[PROT_FIRE]			=	325;
	protection	[PROT_FLY]			=	325;
	protection	[PROT_MAGIC]		=	295;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_SNAPPER;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart]		= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual			(self,	"DragonSnapper.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Razor_Demon_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//********************
//	DragonSnapper    
//********************

INSTANCE DragonSnapper	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
};

INSTANCE DragonSnapper_01	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_02	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_03	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_04	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_05	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_06	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_07	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_08	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_09	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DragonSnapper_10	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};




//****************************************************************************************************************************************************************************************************************************************************************************************
//	STORY-DragonSnapper    
//****************************************************************************************************************************************************************************************************************************************************************************************

//********************
//	Gaans_Snapper    
//********************

INSTANCE Gaans_Snapper	(Mst_Default_DragonSnapper)
{
	name	=	"Schnaubender Drachen-Snapper";

	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
};
