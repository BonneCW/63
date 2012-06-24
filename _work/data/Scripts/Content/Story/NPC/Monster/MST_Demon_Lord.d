//***************************
//	Demon LORD Prototype	
//***************************

PROTOTYPE Mst_Default_DemonLord(C_Npc)			
{
	//----- Monster -----
	name							= "Dämonenlord";
	guild							= GIL_DEMON;
	aivar[AIV_MM_REAL_ID]			= ID_DEMON_LORD;
	level							= 58;
	
	//------ Attribute ----	
	attribute	[ATR_STRENGTH]		= 1050;
	attribute	[ATR_DEXTERITY]		= 1050;
	attribute	[ATR_HITPOINTS_MAX]	= 2050;
	attribute	[ATR_HITPOINTS]		= 2050;
	attribute	[ATR_MANA_MAX] 		= 200;
	attribute	[ATR_MANA] 			= 200;
	
	//------ Protections ----
	protection	[PROT_BLUNT]		= 1050;
	protection	[PROT_EDGE]			= 1050;
	protection	[PROT_POINT]		= 1050;
	protection	[PROT_FIRE]			= 1050;		
	protection	[PROT_FLY]			= 1050;	
	protection	[PROT_MAGIC]		= 1050;
	
	//----- Damage Types -----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//------ Fight-Tatik ----
	fight_tactic	=	FAI_DEMON;
	
	//------ Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter] 	= FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*****************
//	Visuals
//*****************

func void B_SetVisuals_DemonLord()
{
	Mdl_SetVisual			(self,	"Demon.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dem2_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//****************
//	DemonLord    														
//****************

INSTANCE DemonLord	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
};

INSTANCE DemonLord_01	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_02	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_03	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_04	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_05	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_06	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_07	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_08	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_09	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE DemonLord_10	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};


//**************************
//	Xardas_DT_DemonLord    														
//**************************

INSTANCE Xardas_DT_DemonLord	(Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
	Npc_SetToFistMode(self);
};


