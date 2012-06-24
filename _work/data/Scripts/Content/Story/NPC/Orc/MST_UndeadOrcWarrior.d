//*********************************
//	Undead Orc Warrior Prototype	
//*********************************

PROTOTYPE Mst_Default_UndeadOrcWarrior (C_Npc)			
{
	//----- Monster ----
	name							=	"Untoter Ork";
	guild							=	GIL_UNDEADORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_UNDEADORCWARRIOR;
	level							=	55;
	
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	700; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	700; 
	attribute	[ATR_HITPOINTS_MAX]	=	1370;
	attribute	[ATR_HITPOINTS]		=	1370;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	705;
	protection	[PROT_EDGE]			=	705;
	protection	[PROT_POINT]		=	705;
	protection	[PROT_FIRE]			=	705;
	protection	[PROT_FLY]			=	705;
	protection	[PROT_MAGIC]		=	675;
	
	//----- HitChances -----
	HitChance	[NPC_TALENT_1H]			= 100;
	HitChance	[NPC_TALENT_2H]			= 100;
	HitChance	[NPC_TALENT_BOW]		= 100;
	HitChance	[NPC_TALENT_CROSSBOW]	= 100;

	//----- Damage Types -----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_ORC;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
		
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_UndeadOrcWarrior()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"UOW_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

/*************************************************************************
**	Orc Warrior Undead    												**
*************************************************************************/

INSTANCE UndeadOrcWarrior (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE UndeadOrcWarrior_01 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_02 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_03 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_04 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_05 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_06 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_07 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_08 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_09 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE UndeadOrcWarrior_10 (Mst_Default_UndeadOrcWarrior)
{
	// ------ visuals ------
	B_SetVisuals_UndeadOrcWarrior();
	
	// ------ Inventory ------
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

