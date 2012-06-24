//*****************************
//	Orc Elite Prototype		
//*****************************

PROTOTYPE Mst_Default_OrcElite(C_Npc)			
{
	//----- Monster -----
	name							=	"Ork Elite";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCELITE;
	voice							=	18;
	level							=	50;
	
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	550; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	550; 
	attribute	[ATR_HITPOINTS_MAX]	=	1070;
	attribute	[ATR_HITPOINTS]		=	1070;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	555;
	protection	[PROT_EDGE]			=	555;
	protection	[PROT_POINT]		=	555;
	protection	[PROT_FIRE]			=	555;
	protection	[PROT_FLY]			=	555;
	protection	[PROT_MAGIC]		=	525;
	
	//----- HitChances -----
	HitChance	[NPC_TALENT_1H]			= 100;
	HitChance	[NPC_TALENT_2H]			= 100;
	HitChance	[NPC_TALENT_BOW]		= 100;
	HitChance	[NPC_TALENT_CROSSBOW]	= 100;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	fight_tactic	= 	FAI_ORC;

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE;
	senses_range	= 	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

//**************
//	Visuals
//**************

func void B_SetVisuals_OrcElite()
{
	Mdl_SetVisual		(self,	"Orc.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody	(self,	"Orc_BodyElite",	DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
};


//*************************
//	Orc Elite      														
//*************************
INSTANCE OrcElite_Roam (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

INSTANCE OrcElite_01 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_02 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_03 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_04 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_05 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_06 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_07 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_08 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_09 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcElite_10 (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};
//*************************
//	Orc Elite  Rest     														
//*************************
INSTANCE OrcElite_Rest (Mst_Default_OrcElite)
{
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};







//*********************************************************************************************************************************************************************************************************************************
//		Story Orks											
//*********************************************************************************************************************************************************************************************************************************
//*************************
//	OrkElite_AntiPaladinOrkOberst    	(Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)													
//*************************
INSTANCE OrkElite_AntiPaladinOrkOberst (Mst_Default_OrcElite)
{
	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									
	CreateInvItems (self, ItWr_Map_Orcelite_MIS, 1);
	CreateInvItems (self, ItRu_PalFullHeal,1);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrkOberst_01 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_02 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_03 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_04 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_05 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_06 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_07 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_08 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_09 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);									

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrkOberst_10 (Mst_Default_OrcElite)
{
	level = 53;

	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	640; //+100 Waffe //MIN 120!
	attribute	[ATR_DEXTERITY]		=	640; 
	attribute	[ATR_HITPOINTS_MAX]	=	1250;
	attribute	[ATR_HITPOINTS]		=	1250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	645;
	protection	[PROT_EDGE]			=	645;
	protection	[PROT_POINT]		=	645;
	protection	[PROT_FIRE]			=	645;
	protection	[PROT_FLY]			=	645;
	protection	[PROT_MAGIC]		=	615;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_Schlachtaxt);								

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	B_SetSchwierigkeit(self);
};
//*************************
//	Orc Elite AntiPaladin    	(Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)													
//*************************
INSTANCE OrcElite_AntiPaladin (Mst_Default_OrcElite)
{
	name		=	NAME_Antipaldin;
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//*************************
//	Orc Elite AntiPaladin1    	(Wenn SC GIL_PAL ist, dann hat er es mit diesen übelriechenden Schergen zu tun!)													
//*************************
INSTANCE OrcElite_AntiPaladin1 (Mst_Default_OrcElite)
{
	//-------- primary data --------
	name		=		NAME_Antipaldin;
	guild		=		GIL_ORC;
	id 			=		111;
	voice 		=		18;
	flags	 	=		0;
	Npctype 	=		NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									
	
	start_aistate				= ZS_MM_Rtn_DragonRest;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//*************************
//	Orc Elite AntiPaladin2    														
//*************************
INSTANCE OrcElite_AntiPaladin2 (Mst_Default_OrcElite)
{
	name		=	NAME_Antipaldin;
	id 			=	112;
	guild		=	GIL_ORC;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_DragonRest;

	 aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
 
//*************************
//	Orc Elite AntiPaladin3    														
//*************************
INSTANCE OrcElite_AntiPaladin3 (Mst_Default_OrcElite)
{
	name		=	NAME_Antipaldin;
	id 			=	113;
	guild		=	GIL_ORC;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_DragonRest;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//*************************
//	OrkElite_AntiPaladinOrkOberst_DI    									
//*************************
INSTANCE OrkElite_AntiPaladinOrkOberst_DI (Mst_Default_OrcElite)
{
	name		=	"Orkischer Oberst";
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	150;
	attribute	[ATR_DEXTERITY]		=	150;
	attribute	[ATR_HITPOINTS_MAX]	=	450;
	attribute	[ATR_HITPOINTS]		=	450;

	// ------ visuals ------
	B_SetVisuals_OrcElite();

	aivar[AIV_EnemyOverride] = TRUE;

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	CreateInvItems (self, ItKe_OrkKnastDI_MIS, 1);
	CreateInvItems (self, ItRi_OrcEliteRing, 1);									

	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};

//*************************
//	OrcElite_DIOberst1_Rest    														
//*************************
INSTANCE OrcElite_DIOberst1_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride] = TRUE;
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcElite_DIOberst2_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride] = TRUE;
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcElite_DIOberst3_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride] = TRUE;
	// ------ visuals ------
	B_SetVisuals_OrcElite();

	//-------- inventory --------
	EquipItem (self, ItMw_2H_OrcAxe_04);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

