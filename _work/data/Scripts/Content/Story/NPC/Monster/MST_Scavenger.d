//**************************
//	Scavenger Prototype
//**************************

PROTOTYPE Mst_Default_Scavenger(C_Npc)			
{
	//----- Monster ----
	name							=	"Scavenger";
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_SCAVENGER;
	level							=	9;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	115;
	attribute	[ATR_DEXTERITY]		=	45;
	attribute	[ATR_HITPOINTS_MAX]	=	75;
	attribute	[ATR_HITPOINTS]		=	75;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	30;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	50;
	protection	[PROT_MAGIC]		=	30;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	//damage		[DAM_INDEX_BLUNT]	=	0;
	//damage		[DAM_INDEX_EDGE]	=	30;	
	//damage		[DAM_INDEX_POINT]	=	0;
	//damage		[DAM_INDEX_FIRE]	=	0;
	//damage		[DAM_INDEX_FLY]		=	0;
	//damage		[DAM_INDEX_MAGIC]	=	0;
	
	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SCAVENGER;

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	//----- Dailay Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_SleepStart] 	= 22;	
	aivar[AIV_MM_SleepEnd]		= 6;
	aivar[AIV_MM_EatGroundStart]= 6;
	aivar[AIV_MM_EatGroundEnd]	= 22;
};


//****************
//	Visuals
//****************
	
func void B_SetVisuals_Scavenger()
{
	Mdl_SetVisual			(self,	"Scavenger.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sca_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	Scavenger 
//***************

INSTANCE Scavenger	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);
};

INSTANCE Scavenger_01	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_02	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_03	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_04	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_05	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_06	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_07	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_08	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_09	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_10	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);

	B_SetSchwierigkeit(self);
};




