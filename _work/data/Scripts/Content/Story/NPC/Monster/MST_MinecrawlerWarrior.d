//************************************
//	Minecrawler WARRIOR Prototype		
//************************************

PROTOTYPE Mst_Default_MinecrawlerWarrior(C_Npc)			
{
	//----- Monster -----
	name							=	"Minecrawler Warrior";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_MINECRAWLERWARRIOR;
	level							=	34;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	290;
	attribute	[ATR_DEXTERITY]		=	290;
	attribute	[ATR_HITPOINTS_MAX]	=	550;
	attribute	[ATR_HITPOINTS]		=	550;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	295;
	protection	[PROT_EDGE]			=	295;
	protection	[PROT_POINT]		=	295;
	protection	[PROT_FIRE]			=	295;
	protection	[PROT_FLY]			=	295;
	protection	[PROT_MAGIC]		=	265;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic		=	FAI_MINECRAWLER;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- DAily Routine -----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;
};


//************
//	Visuals
//************


func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual			(self,	"Crawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Cr2_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************************
//	MinecrawlerWarrior    
//************************

INSTANCE MinecrawlerWarrior	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
};

INSTANCE MinecrawlerWarrior_01	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_02	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_03	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_04	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_05	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_06	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_07	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_08	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_09	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE MinecrawlerWarrior_10	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
