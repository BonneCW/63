//****************************
//	Icedragon Prototype			
//****************************

PROTOTYPE Mst_Default_Dragon_Ice(C_Npc)			
{
	//----- Monster ----
	name							= "Eisdrache";
	guild							= GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]			= ID_DRAGON_ICE;
	level							= 59*3;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		= 950;
	attribute	[ATR_DEXTERITY]		= 950;
	attribute	[ATR_HITPOINTS_MAX]	= 1850;
	attribute	[ATR_HITPOINTS]		= 1850;
	attribute	[ATR_MANA_MAX] 		= 1000;
	attribute	[ATR_MANA] 			= 1000;
	
	//------ Protections ----	
	protection	[PROT_BLUNT]		= 955;
	protection	[PROT_EDGE]			= 955;
	protection	[PROT_POINT]		= 955;	
	protection	[PROT_FIRE]			= 955;
	protection	[PROT_FLY]			= 955;	
	protection	[PROT_MAGIC]		= 955;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	959;
//	damage		[DAM_INDEX_FLY]		=	1; //Opfer fliegt für Fire+Fly
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_DRAGON;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_DRAGON_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	aivar[AIV_MaxDistToWp]			= 10000;
	aivar[AIV_OriginalFightTactic] 	= FAI_DRAGON;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_Rtn_Roam;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Dragon_Ice()
{
	Mdl_SetVisual			(self,	"Dragon.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dragon_Ice_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	Mdl_SetModelScale	(self, 0.7, 0.7, 0.7);
};


//*********************
//	Icedragon 
//*********************

INSTANCE Dragon_Ice	(Mst_Default_Dragon_Ice)
{
	name	=	"Finkregh";
	flags				   			= 	NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
};

INSTANCE Dragon_Ice_01	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_02	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_03	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_04	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_05	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_06	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_07	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_08	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_09	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Dragon_Ice_10	(Mst_Default_Dragon_Ice)
{
	B_SetVisuals_Dragon_Ice();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
