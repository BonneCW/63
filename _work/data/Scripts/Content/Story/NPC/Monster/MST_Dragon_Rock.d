/*************************************************************************
**	Rockdragon Prototype														**
*************************************************************************/

PROTOTYPE Mst_Default_Dragon_Rock(C_Npc)			
{
	//----- Monster ----
	name							=	"Felsdrache";
	guild							=	GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]			= 	ID_DRAGON_ROCK;
	level							=	59*3;
	
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		= 950;
	attribute	[ATR_DEXTERITY]		= 950;
	attribute	[ATR_HITPOINTS_MAX]	= 1670;
	attribute	[ATR_HITPOINTS]		= 1670;
	attribute	[ATR_MANA_MAX] 		= 1000;
	attribute	[ATR_MANA] 			= 1000;
	
	//------ Protections ----	
	protection	[PROT_BLUNT]		= 855;
	protection	[PROT_EDGE]			= 855;
	protection	[PROT_POINT]		= 855;	
	protection	[PROT_FIRE]			= 855;
	protection	[PROT_FLY]			= 855;	
	protection	[PROT_MAGIC]		= 855;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	859;
//	damage		[DAM_INDEX_FLY]		=	1; //Opfer fliegt für Fire+Fly
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//------ Kampf-Taktik -----	
	fight_tactic	=	FAI_DRAGON;
	
	//------ Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_DRAGON_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	aivar[AIV_MaxDistToWp]			= 1000;
	aivar[AIV_OriginalFightTactic] 	= FAI_DRAGON;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_Roam;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//****************
//	Visuals
//****************

func void B_SetVisuals_Dragon_Rock()
{
	Mdl_SetVisual			(self,	"Dragon.mds");
	//								Body-Mesh				Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dragon_Rock_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	Mdl_SetModelScale	(self, 0.7, 0.7, 0.7);
};


//****************
//	Rockdragon    
//****************

INSTANCE Dragon_Rock	(Mst_Default_Dragon_Rock)
{
	name				=	"Pedrakhan";
	flags				   			= 	NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Rock_01	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_02	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_03	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_04	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_05	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_06	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_07	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_08	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_09	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Rock_10	(Mst_Default_Dragon_Rock)
{
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
