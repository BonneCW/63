//**************************
//	Skeleton-Mage Prototype	
//**************************

PROTOTYPE Mst_Default_Skeleton_Mage(C_Npc)			
{
	//----- Monster ----
	name							=	"Skelettmagier";
	guild							=	GIL_SKELETON_MAGE;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON_MAGE;
	level							=	42;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	370;
	attribute	[ATR_DEXTERITY]		=	370;
	attribute	[ATR_HITPOINTS_MAX]	=	710;
	attribute	[ATR_HITPOINTS]		=	710;
	attribute	[ATR_MANA_MAX] 		=	1000;
	attribute	[ATR_MANA] 			=	1000;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	375;
	protection	[PROT_EDGE]			=	375;
	protection	[PROT_POINT]		=	405;
	protection	[PROT_FIRE]			=	375;
	protection	[PROT_FLY]			=	375;
	protection	[PROT_MAGIC]		=	345;		
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Skeleton_Mage()
{
	Mdl_SetVisual			(self,	"HumanS.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_skeleton_fly.mds");

	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Ske_Fly_Body",	1,			DEFAULT,	"",			1,  		DEFAULT,	-1);
};

//*********************
//	Skeleton   Mage 	
//*********************

INSTANCE SkeletonMage		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
};

INSTANCE SkeletonMage_01		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_02		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_03		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_04		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_05		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_06		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_07		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_08		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_09		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

INSTANCE SkeletonMage_10		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	
	B_SetSchwierigkeit(self);
};

//*********************
//	SkeletonMage_Angar 	
//*********************

INSTANCE SkeletonMage_Angar		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	CreateInvItems (self, ItAm_Mana_Angar_MIS, 1);	
	CreateInvItems (self, ItPo_Perm_Mana, 1);	
};

//************************
//	SecretLibrarySkeleton
//***********************

INSTANCE SecretLibrarySkeleton		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
};
