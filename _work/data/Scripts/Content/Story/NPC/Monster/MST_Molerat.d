//***************************
//	Molerat Prototype	
//***************************

PROTOTYPE Mst_Default_Molerat(C_Npc)			
{
	//----- Monster ----
	name							=	"Molerat";
	guild							=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]			= 	ID_MOLERAT;
	level							=	6;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	85;
	attribute	[ATR_DEXTERITY]		=	25;
	attribute	[ATR_HITPOINTS_MAX]	=	50;
	attribute	[ATR_HITPOINTS]		=	50;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	25;
	protection	[PROT_EDGE]			=	25;
	protection	[PROT_POINT]		=	25;	
	protection	[PROT_FIRE]			=	25;
	protection	[PROT_FLY]			=	25;	
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_MOLERAT;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Molerat()
{
	Mdl_SetVisual			(self,	"Molerat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Mol_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Molerat	
//*****************
INSTANCE Molerat	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};

INSTANCE Molerat_01	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_02	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_03	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_04	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_05	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_06	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_07	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_08	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_09	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Molerat_10	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_01	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_02	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_03	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_04	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_05	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_06	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_07	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_08	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_09	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};

INSTANCE YMolerat_10	(Mst_Default_Molerat)
{
	name = "Junge Molerat";

	level = 2;

	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	4;
	attribute	[ATR_DEXTERITY]		=	7;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	5;
	protection	[PROT_EDGE]			=	5;
	protection	[PROT_POINT]		=	5;	
	protection	[PROT_FIRE]			=	5;
	protection	[PROT_FLY]			=	5;	
	protection	[PROT_MAGIC]		=	5;

	B_SetSchwierigkeit(self);
};
