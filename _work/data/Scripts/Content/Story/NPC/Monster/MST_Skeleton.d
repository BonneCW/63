//************************
//	Skeleton Prototype
//************************

PROTOTYPE Mst_Default_Skeleton(C_Npc)			
{
	//----- Monster ----
	name							=	"Skelett";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	38;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	330; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	330;
	attribute	[ATR_HITPOINTS_MAX]	=	630;
	attribute	[ATR_HITPOINTS]		=	630;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	335;
	protection	[PROT_EDGE]			=	335;
	protection	[PROT_POINT]		=	365; 
	protection	[PROT_FIRE]			=	335;
	protection	[PROT_FLY]			=	335;
	protection	[PROT_MAGIC]		=	305;
		
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

//***************
//	Visuals
//***************

func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual			(self,	"HumanS.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Ske_Body2",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Lesser_Skeleton()
{
	Mdl_SetVisual			(self,	"HumanS.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Ske_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//**************
//	Skeleton    
//**************

INSTANCE Skeleton			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};

INSTANCE Skeleton_01			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_02			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_03			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_04			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_05			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_06			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_07			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_08			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_09			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Skeleton_10			(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	
	B_SetSchwierigkeit(self);
};

//**************
//	Skeleton    
//**************

INSTANCE Summoned_Skeleton (Mst_Default_Skeleton)
{
	name							=	"Beschworenes Skelett";
	guild							=	GIL_SUMMONED_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SUMMONED_SKELETON;
	level							=	0; //30

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	330; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	330;
	attribute	[ATR_HITPOINTS_MAX]	=	630;
	attribute	[ATR_HITPOINTS]		=	630;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	335;
	protection	[PROT_EDGE]			=	335;
	protection	[PROT_POINT]		=	365; 
	protection	[PROT_FIRE]			=	335;
	protection	[PROT_FLY]			=	335;
	protection	[PROT_MAGIC]		=	305;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Lesser_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	//EquipItem (self, ItRw_Sld_Bow); //FIXME Carsten: Bogen schießt beim Skelett in Zeitlupe...
};

INSTANCE Summoned_Skeleton_Bad (Mst_Default_Skeleton)
{
	name							=	"Beschworenes böses Skelett";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	0; //30

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	330; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	330;
	attribute	[ATR_HITPOINTS_MAX]	=	630;
	attribute	[ATR_HITPOINTS]		=	630;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	335;
	protection	[PROT_EDGE]			=	335;
	protection	[PROT_POINT]		=	365; 
	protection	[PROT_FIRE]			=	335;
	protection	[PROT_FLY]			=	335;
	protection	[PROT_MAGIC]		=	305;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	//EquipItem (self, ItRw_Sld_Bow); //FIXME Carsten: Bogen schießt beim Skelett in Zeitlupe...
};

//**************
//	Lesser Skeleton    
//**************

INSTANCE Lesser_Skeleton	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_01	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_02	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_03	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_04	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_05	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_06	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_07	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_08	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_09	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Lesser_Skeleton_10	(Mst_Default_Skeleton)
{
	name							=	"Niederes Skelett";
	
	level							=	33;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	280; //+30 Waffe
	attribute	[ATR_DEXTERITY]		=	280;
	attribute	[ATR_HITPOINTS_MAX]	=	530;
	attribute	[ATR_HITPOINTS]		=	530;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	285;
	protection	[PROT_EDGE]			=	285;
	protection	[PROT_POINT]		=	310; 
	protection	[PROT_FIRE]			=	285;
	protection	[PROT_FLY]			=	285;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Lesser_Skeleton();
	
	// ------ Waffe ------
	EquipItem (self, ItMw_1h_MISC_Sword);
	
	B_SetSchwierigkeit(self);
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 	Story Skeletons
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//**************
//	Crypt-Skeletons
//**************

INSTANCE Crypt_Skeleton_Room_01			(Mst_Default_Skeleton)
{
	name							=	"Krypta-Wächter";

	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
	CreateInvItem (self, ItKe_EVT_CRYPT_01);
};

INSTANCE Crypt_Skeleton_Room_02			(Mst_Default_Skeleton)
{
	name							=	"Krypta-Wächter";

	aivar[AIV_EnemyOverride] = TRUE;
	
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_02);
};

INSTANCE Crypt_Skeleton_Room_03			(Mst_Default_Skeleton)
{
	name							=	"Krypta-Wächter";

	aivar[AIV_EnemyOverride] = TRUE;
	
	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
	CreateInvItem (self, ItKe_EVT_CRYPT_03);
};
//****************************
//	Archols-Skeletons auf DI
//****************************

INSTANCE Skeleton_Archol1	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
};

INSTANCE Skeleton_Archol2	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};

INSTANCE Skeleton_Archol3	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
};

INSTANCE Skeleton_Archol4	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};

INSTANCE Skeleton_Archol5	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
};

INSTANCE Skeleton_Archol6	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};
//****************************
//	Marios-Skeletons auf DI
//****************************

INSTANCE Skeleton_Mario1	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
};

INSTANCE Skeleton_Mario2	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};

INSTANCE Skeleton_Mario3	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_1h_MISC_Sword);
};

INSTANCE Skeleton_Mario4	(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;

	B_SetVisuals_Skeleton();

	EquipItem (self, ItMw_2H_Sword_M_01);
};
