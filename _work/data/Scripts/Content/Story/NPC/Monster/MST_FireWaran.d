//*************************
//	Fire Waran Prototype  
//*************************

PROTOTYPE Mst_Default_FireWaran(C_Npc)			
{
	//----- Monster ----
	name							=	"Feuerwaran";
	guild							=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]			= 	ID_FIREWARAN;
	level							=	40;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	250;
	attribute	[ATR_DEXTERITY]		=	350;
	attribute	[ATR_HITPOINTS_MAX]	=	670;
	attribute	[ATR_HITPOINTS]		=	670;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	355;
	protection	[PROT_EDGE]			=	355;
	protection	[PROT_POINT]		=	355;
	protection	[PROT_FIRE]			=	355;
	protection	[PROT_FLY]			=	355;
	protection	[PROT_MAGIC]		=	325;
	
	//----- Damage Types ----
	damagetype 						=	DAM_FIRE; //Opfer fängt an zu brennen
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_WARAN;

	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_Setvisuals_FireWaran()
{
	Mdl_SetVisual			(self,	"Waran.mds");
	Mdl_ApplyOverlayMds 	(self,	"Firewaran.mds");

	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"War_Fire_Body",DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Fire Waran    	
//*****************

INSTANCE FireWaran	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
};

INSTANCE FireWaran_01	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_02	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_03	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_04	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_05	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_06	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_07	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_08	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_09	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE FireWaran_10	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
