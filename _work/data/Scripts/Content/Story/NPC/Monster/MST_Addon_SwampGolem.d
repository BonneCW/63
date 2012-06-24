//***************************
//	Swampgolem Prototype			
//***************************

PROTOTYPE Mst_Default_Addon_SwampGolem(C_Npc)			
{
	//----- Monster ----
	name							=	"Sumpfgolem";
	guild							=	GIL_SWAMPGOLEM;
	aivar[AIV_MM_REAL_ID]			= 	ID_SWAMPGOLEM;
	level							=	39;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		= 440;
	attribute	[ATR_DEXTERITY]		= 440;
	attribute	[ATR_HITPOINTS_MAX]	= 650;
	attribute	[ATR_HITPOINTS]		= 650;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		= 345;
	protection	[PROT_EDGE]			= 345;
	protection	[PROT_POINT]		= 375;
	protection	[PROT_FIRE]			= 345;
	protection	[PROT_FLY]			= 345;	
	protection	[PROT_MAGIC]		= 345;
	
	//---- Damage Types ----
	damagetype 						=	DAM_BLUNT;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGOLEM;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//-------------------------------------------------------------
func void B_SetVisuals_Swampgolem()
{
	Mdl_SetVisual			(self,	"SwampGolem.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gol_Sumpf_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//******************
//	Swampgolem
//******************

INSTANCE SwampGolem	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
};

INSTANCE SwampGolem_01	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_02	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_03	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_04	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_05	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_06	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_07	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_08	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_09	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE SwampGolem_10	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	
	B_SetSchwierigkeit(self);
};

//******************
//	SwampGolem_Valley
//******************

INSTANCE SwampGolem_Valley	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	aivar[AIV_MaxDistToWp]			= 1500;
	aivar[AIV_OriginalFightTactic] 	= FAI_STONEGOLEM;
};

