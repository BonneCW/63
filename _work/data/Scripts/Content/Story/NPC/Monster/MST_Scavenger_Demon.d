//****************************
//	Scavenger-Demon Prototype
//****************************

PROTOTYPE Mst_Default_Scavenger_Demon(C_Npc)			
{
	//----- Monster ----
	name							=	NAME_ADDON_SCAVENGERGL;
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_SCAVENGER_DEMON;
	level							=	26;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	210;
	attribute	[ATR_DEXTERITY]		=	210;
	attribute	[ATR_HITPOINTS_MAX]	=	390;
	attribute	[ATR_HITPOINTS]		=	390;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections -----
	protection	[PROT_BLUNT]		=	225;
	protection	[PROT_EDGE]			=	225;
	protection	[PROT_POINT]		=	205;
	protection	[PROT_FIRE]			=	225;
	protection	[PROT_FLY]			=	225;
	protection	[PROT_MAGIC]		=	195;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	//damage		[DAM_INDEX_BLUNT]	=	0;
	//damage		[DAM_INDEX_EDGE]	=	30;	//STR wird genommen, wenn Summe aller dam = 0
	//damage		[DAM_INDEX_POINT]	=	0;
	//damage		[DAM_INDEX_FIRE]	=	0;
	//damage		[DAM_INDEX_FLY]		=	0;
	//damage		[DAM_INDEX_MAGIC]	=	0;
	
	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SCAVENGER;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_SleepStart] 	= 22;	
	aivar[AIV_MM_SleepEnd]		= 6;
	aivar[AIV_MM_EatGroundStart]= 6;
	aivar[AIV_MM_EatGroundEnd]	= 22;
};


//************
//	Visuals
//************


func void B_SetVisuals_Scavenger_Demon()
{
	Mdl_SetVisual			(self,	"ScavengerGL.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Scavenger_Demon_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	Scavenger    
//***************

INSTANCE Scavenger_Demon	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};

INSTANCE Scavenger_Demon_01	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_02	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_03	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_04	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_05	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_06	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_07	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_08	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_09	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE Scavenger_Demon_10	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
