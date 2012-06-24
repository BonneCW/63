//***********************
//	Snapper Prototype	
//***********************

PROTOTYPE Mst_Default_Snapper(C_Npc)			
{
	//---- Monster ----
	name							=	"Snapper";
	guild							=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]			= 	ID_SNAPPER;
	level							=	19;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	140;
	attribute	[ATR_DEXTERITY]		=	140;
	attribute	[ATR_HITPOINTS_MAX]	=	250;
	attribute	[ATR_HITPOINTS]		=	250;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----	
	protection	[PROT_BLUNT]		=	155;
	protection	[PROT_EDGE]			=	155;
	protection	[PROT_POINT]		=	155;		
	protection	[PROT_FIRE]			=	155;
	protection	[PROT_FLY]			=	155;
	protection	[PROT_MAGIC]		=	125;

	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_SNAPPER;

	//----- Senses & Ranges ----	
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;

	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart]		= OnlyRoutine;
};


//*******************
//	Visuals
//*******************

	
func void B_SetVisuals_Snapper()
{
	Mdl_SetVisual			(self,	"Snapper.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sna_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//**************
//	Snapper    	
//**************

INSTANCE Snapper	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE Snapper_01	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_02	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_03	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_04	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_05	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_06	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_07	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_08	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_09	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Snapper_10	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};


//**************
//	Spezielle Snapper    	
//**************

//---------------OW Newmine---------------------

INSTANCE NewMine_Snapper1	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper2	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper3	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper4	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper5	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper6	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper7	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_Snapper8	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE NewMine_LeadSnapper	(Mst_Default_Snapper)	//OW NewMineMission Kill_Snapper: Bilgot weiß von einem Leittier, das muß tot -> Fajeths Auftrag erledigt! 
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	name	=	"Rudelführer";
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	60;
	attribute	[ATR_DEXTERITY]		=	60;
	attribute	[ATR_HITPOINTS_MAX]	=	160;
	attribute	[ATR_HITPOINTS]		=	160;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----	
	protection	[PROT_BLUNT]		=	30;
	protection	[PROT_EDGE]			=	30;
	protection	[PROT_POINT]		=	20;		
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	30;
	protection	[PROT_MAGIC]		=	0;
	
	CreateInvItems (self, ItAt_ClawLeader,1);
};

//**************
//	Grimbald Snapper   	(Trollarea)	
//**************

INSTANCE Grimbald_Snapper1	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE Grimbald_Snapper2	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

INSTANCE Grimbald_Snapper3	(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};
