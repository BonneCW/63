//*************************
//	Giant_DesertRat Prototype		
//*************************

PROTOTYPE Mst_Default_Giant_DesertRat(C_Npc)			
{
	//----- Monster ----
	name							=	"Wüstenratte";
	guild							=	GIL_Giant_Rat;
	aivar[AIV_MM_REAL_ID]			= 	ID_Giant_Rat;
	level							=	14;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	190;
	attribute	[ATR_DEXTERITY]		=	90;
	attribute	[ATR_HITPOINTS_MAX]	=	150;
	attribute	[ATR_HITPOINTS]		=	150;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	105;
	protection	[PROT_EDGE]			=	105;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	105;
	protection	[PROT_FLY]			=	105;
	protection	[PROT_MAGIC]		=	75;
	
	//----- Damage TYpes ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_GIANT_RAT;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		= OnlyRoutine;
};


//************
//	Visuals
//************

func void B_SetVisuals_Giant_DesertRat()
{
	Mdl_SetVisual			(self,	"Giant_Rat.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Giant_DesertRat_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
	Mdl_SetModelScale(self,	1.30,	1.30, 	1);
};


//***************
//	Giant_DesertRat    
//***************

INSTANCE Giant_DesertRat	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
};

INSTANCE Giant_DesertRat_01	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_02	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_03	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_04	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_05	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_06	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_07	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_08	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_09	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Giant_DesertRat_10	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
