//*************************
//	Giant_Bug Prototype		
//*************************

PROTOTYPE Mst_Default_Giant_Bug(C_Npc)			
{
	//----- Monster ----
	name							=	"Feldräuber";
	guild							=	GIL_GIANT_BUG;
	aivar[AIV_MM_REAL_ID]			= 	ID_GIANT_BUG;
	level							=	11;
 
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	145;
	attribute	[ATR_DEXTERITY]		=	65;
	attribute	[ATR_HITPOINTS_MAX]	=	100;
	attribute	[ATR_HITPOINTS]		=	100;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	75;
	protection	[PROT_EDGE]			=	75;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	75;
	protection	[PROT_FLY]			=	75;
	protection	[PROT_MAGIC]		=	40;
	
	//----- Damage TYpes ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_GIANT_BUG;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		= OnlyRoutine;
};


//************
//	Visuals
//************

func void B_SetVisuals_Giant_Bug()
{
	Mdl_SetVisual			(self,	"Giant_Bug.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Giant_Bug_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	Giant_Bug    
//***************

INSTANCE Giant_Bug	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};

INSTANCE Giant_Bug_01	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_02	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_03	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_04	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_05	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_06	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_07	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_08	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_09	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_Bug_10	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};


//**************************************
//	junge Giant_Bug   (für Spielstart) 	
//**************************************

INSTANCE YGiant_Bug	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	2;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	30;
	attribute	[ATR_DEXTERITY]		=	10;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};

INSTANCE YGiant_Bug_01	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_02	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_03	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_04	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_05	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_06	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_07	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_08	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_09	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE YGiant_Bug_10	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	15;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};


INSTANCE YGiant_Bug_VinoRitual1	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	10;
	attribute	[ATR_DEXTERITY]		=	10;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};

INSTANCE YGiant_Bug_VinoRitual2	(Mst_Default_Giant_Bug)
{
	//----- Monster ----
	name							=	"Junger Feldräuber";
	level							=	4;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	10;
	attribute	[ATR_DEXTERITY]		=	10;
	attribute	[ATR_HITPOINTS_MAX]	=	40;
	attribute	[ATR_HITPOINTS]		=	40;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;

	//----- Kampf-Taktik ----
	fight_tactic					= FAI_GIANT_BUG;

	//----- Visuals ----
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};

//**************************************
//	Lobarts_Giant_Bug s   (für Miliz Aufnahmemission) 	
//**************************************

INSTANCE Lobarts_Giant_Bug1	(Mst_Default_Giant_Bug)	
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug2	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug3	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug4	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug5	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug6	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
INSTANCE Lobarts_Giant_Bug7	(Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
	Npc_SetToFistMode(self);
};
