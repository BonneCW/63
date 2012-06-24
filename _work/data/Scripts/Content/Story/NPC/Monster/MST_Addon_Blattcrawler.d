//*****************************
//	Minecrawler Prototype
//*****************************

PROTOTYPE Mst_Default_Blattcrawler(C_Npc)			
{
	//----- Monster ----
	name							=	"Fangheuschrecke";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLATTCRAWLER;
	level							=	23;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		= 180;
	attribute	[ATR_DEXTERITY]		= 180;
	attribute	[ATR_HITPOINTS_MAX]	= 330;
	attribute	[ATR_HITPOINTS]		= 330;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		= 195;
	protection	[PROT_EDGE]			= 195;
	protection	[PROT_POINT]		= 195;
	protection	[PROT_FIRE]			= 195;
	protection	[PROT_FLY]			= 195;
	protection	[PROT_MAGIC]		= 165;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_MINECRAWLER;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;
};


//***********
// Visuals
//***********

func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual			(self,	"Blattcrawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"BlattCrawler_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Minecrawler
//*****************

INSTANCE Blattcrawler	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
};

INSTANCE Blattcrawler_01	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_02	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_03	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_04	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_05	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_06	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_07	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_08	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_09	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Blattcrawler_10	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

