//***************************
//	Undeaddragon Prototype	
//***************************

PROTOTYPE Mst_Default_Dragon_Undead(C_Npc)			
{
	//----- Monster ----
	name							=	"Untoter Drache";
	guild							=	GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]			= 	ID_DRAGON_UNDEAD;
	level							=	60*2;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		= 1200;
	attribute	[ATR_DEXTERITY]		= 1200;
	attribute	[ATR_HITPOINTS_MAX]	= 2200;
	attribute	[ATR_HITPOINTS]		= 2200;
	attribute	[ATR_MANA_MAX] 		= 2000;
	attribute	[ATR_MANA] 			= 2000;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		= 1100;
	protection	[PROT_EDGE]			= 1100;
	protection	[PROT_POINT]		= 1100;
	protection	[PROT_FIRE]			= 1100;
	protection	[PROT_FLY]			= 1100;	
	protection	[PROT_MAGIC]		= 1100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	1209;
//	damage		[DAM_INDEX_FLY]		=	1;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_DRAGON;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= 1000;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	aivar[AIV_MaxDistToWp]			= 1000;
	aivar[AIV_OriginalFightTactic] 	= FAI_DRAGON;

	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_Roam;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Dragon_Undead()
{
	Mdl_SetVisual			(self,	"Dragon.mds");
	//								Body-Mesh				Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dragon_Undead_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	Mdl_SetModelScale	(self, 0.6, 0.6, 0.6);
};


//*****************
//	Undeaddragon	
//*****************
INSTANCE Dragon_Undead	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_01	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_02	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_03	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_04	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_05	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_06	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_07	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_08	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_09	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Undead_10	(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	effect							=	"spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};