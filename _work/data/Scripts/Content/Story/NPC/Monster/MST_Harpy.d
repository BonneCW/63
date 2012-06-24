//**************************
//	Harpie Prototype
//**************************

PROTOTYPE Mst_Default_Harpie(C_Npc)			
{
	//----- Monster ----
	name							=	"Harpie";
	guild							=	GIL_HARPY;
	aivar[AIV_MM_REAL_ID]			= 	ID_HARPY;
	level							=	27;
	
	//-----Attribute ----	
	attribute	[ATR_STRENGTH]		=	220;
	attribute	[ATR_DEXTERITY]		=	220;
	attribute	[ATR_HITPOINTS_MAX]	=	410;
	attribute	[ATR_HITPOINTS]		=	410;
	attribute	[ATR_MANA_MAX] 		=	100;
	attribute	[ATR_MANA] 			=	100;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	235;
	protection	[PROT_EDGE]			=	235;
	protection	[PROT_POINT]		=	215;
	protection	[PROT_FIRE]			=	235;
	protection	[PROT_FLY]			=	235;
	protection	[PROT_MAGIC]		=	205;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	= 	FAI_HARPY;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//**************
//	Visuals
//**************


func void B_SetVisuals_Harpie()
{
	Mdl_SetVisual			(self,	"Harpie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Har_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Harpie
//************

INSTANCE Harpie	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
};

INSTANCE Harpie_01	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_02	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_03	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_04	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_05	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_06	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_07	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_08	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_09	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Harpie_10	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
