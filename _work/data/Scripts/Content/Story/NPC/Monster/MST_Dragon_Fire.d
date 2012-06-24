//****************************
//	Firedragon Prototype		
//****************************

PROTOTYPE Mst_Default_Dragon_Fire(C_Npc)			
{
	name							= "Feuerdrache";
	guild							= GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]			= ID_DRAGON_FIRE;
	level							= 59*2;
	
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	950;
	attribute	[ATR_DEXTERITY]		=	950;
	attribute	[ATR_HITPOINTS_MAX]	=	1750;
	attribute	[ATR_HITPOINTS]		=	1750;
	attribute	[ATR_MANA_MAX] 		=	1000;
	attribute	[ATR_MANA] 			=	1000;
	
	//------ Protections ----	
	protection	[PROT_BLUNT]		=	905;
	protection	[PROT_EDGE]			=	905;
	protection	[PROT_POINT]		=	905;	
	protection	[PROT_FIRE]			=	905;
	protection	[PROT_FLY]			=	905;	
	protection	[PROT_MAGIC]		=	905;
	
	//------ Damage Types ----	
	damagetype 						=	DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	909;
//	damage		[DAM_INDEX_FLY]		=	1; //Opfer fliegt f�r Fire+Fly
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_DRAGON;
	
	//----- Sense & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_DRAGON_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	//aivar[AIV_MaxDistToWp]		= 700;
	aivar[AIV_OriginalFightTactic] 	= FAI_DRAGON;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_Roam;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//******************
//	Visuals
//******************

func void B_SetVisuals_Dragon_Fire()
{
	Mdl_SetVisual			(self,	"Dragon.mds");
	//								Body-Mesh				Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dragon_FIRE_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	Mdl_SetModelScale	(self, 0.7, 0.7, 0.7);
};

//*****************
//	Firedragon
//*****************

INSTANCE Dragon_Fire	(Mst_Default_Dragon_Fire)
{
	name				=	"Feomathar";
	//flags				= 	NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Fire_01	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_02	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_03	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_04	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_05	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_06	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_07	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_08	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_09	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Fire_10	(Mst_Default_Dragon_Fire)
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

//**************************
//	Firedragon Dragonisland
//*************************

INSTANCE Dragon_Fire_Island	(Mst_Default_Dragon_Fire)
{
	name				=	"Feodaron";
	flags				   			= 	NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
};
