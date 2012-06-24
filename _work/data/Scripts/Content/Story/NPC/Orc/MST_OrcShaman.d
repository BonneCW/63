//****************************
//	Orc SHAMAN Prototype		
//****************************

PROTOTYPE Mst_Default_OrcShaman(C_Npc)			
{
	//----- Monster ----
	name							=	"Ork Schamane";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCSHAMAN;
	voice							=	18;
	level							=	46;
	
	//----- Attributes ----	
	attribute	[ATR_STRENGTH]		=	430; //MIN 100! + ca. 70 Waffe
	attribute	[ATR_DEXTERITY]		=	430;
	attribute	[ATR_HITPOINTS_MAX]	=	830;
	attribute	[ATR_HITPOINTS]		=	830;
	attribute	[ATR_MANA_MAX] 		=	1000;
	attribute	[ATR_MANA] 			=	1000;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	435;
	protection	[PROT_EDGE]			=	435;
	protection	[PROT_POINT]		=	435;
	protection	[PROT_FIRE]			=	435;
	protection	[PROT_FLY]			=	435;
	protection	[PROT_MAGIC]		=	405;
	
	//----- HitChances -----
	HitChance	[NPC_TALENT_1H]			= 80;
	HitChance	[NPC_TALENT_2H]			= 80;
	HitChance	[NPC_TALENT_BOW]		= 80;
	HitChance	[NPC_TALENT_CROSSBOW]	= 80;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	fight_tactic	=	FAI_ORC;

	EquipItem (self, ItMw_2H_OrcAxe_01);

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE;
	senses_range	= 	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};


//****************
//	Visuals
//****************

func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyShaman",	DEFAULT,	DEFAULT,	"Orc_HeadShaman",	DEFAULT,  	DEFAULT,	-1);
};


//****************
//	Orc Shaman    
//****************

INSTANCE OrcShaman_Sit (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};

INSTANCE OrcShaman_01 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_02 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_03 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_04 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_05 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_06 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_07 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_08 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_09 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcShaman_10 (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

//*********************
//	Hosh-Pak
//*********************

INSTANCE OrcShaman_Hosh_Pak (Mst_Default_OrcShaman)
{
	name							=	"Hosh-Pak";

	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};
//****************
//	Orc Shaman    
//****************

INSTANCE OrcShaman_Sit_CanyonLibraryKey (Mst_Default_OrcShaman)
{
	name							=	"Anführer der Horde";
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	CreateInvItems (self, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON, 1);									
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};

