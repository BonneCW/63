/*************************************************************************
**	Stoneguardian Prototype												**
*************************************************************************/

prototype Mst_Addon_Stoneguardian	(C_NPC)
{
	//----- Monster ----
	name							= "Steinw�chter";
	guild							= GIL_STONEGUARDIAN;
	aivar[AIV_MM_REAL_ID]			= ID_STONEGUARDIAN;
	level							= 28;
	
	bodyStateInterruptableOverride  = TRUE;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		= 230; 
	attribute	[ATR_DEXTERITY]		= 230;
	attribute	[ATR_HITPOINTS_MAX]	= 430;
	attribute	[ATR_HITPOINTS]		= 430;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;

	//----- Protection ----
	protection	[PROT_BLUNT]		= 245;
	protection	[PROT_EDGE]			= 245;
	protection	[PROT_POINT]		= 300; 
	protection	[PROT_FIRE]			= 245;
	protection	[PROT_FLY]			= 245;
	protection	[PROT_MAGIC]		= 245;	
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGUARDIAN;	
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;

	Npc_SetToFistMode(self);
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Stoneguardian()
{
	Mdl_SetVisual			(self,"StoneGuardian.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"StG_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//**************************************************************
//	Beschworener Steinw�chter	
//**************************************************************

INSTANCE Summoned_Guardian	(Mst_Addon_Stoneguardian)
{
	name							= NAME_Addon_Summoned_Guardian;
	guild							= GIL_SUMMONEDGuardian;
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONEDGuardian;
	level							=	0;	//30

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		= 230; 
	attribute	[ATR_DEXTERITY]		= 230;
	attribute	[ATR_HITPOINTS_MAX]	= 430;
	attribute	[ATR_HITPOINTS]		= 430;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;

	//----- Protection ----
	protection	[PROT_BLUNT]		= 245;
	protection	[PROT_EDGE]			= 245;
	protection	[PROT_POINT]		= 300; 
	protection	[PROT_FIRE]			= 245;
	protection	[PROT_FLY]			= 245;
	protection	[PROT_MAGIC]		= 245;	
		
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

//**************************************************************
//	Steinw�chter	
//**************************************************************


INSTANCE Stoneguardian	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};

INSTANCE Stoneguardian_01	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_02	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_03	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_04	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_05	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_06	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_07	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_08	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_09	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

INSTANCE Stoneguardian_10	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	
	B_SetSchwierigkeit(self);
};

//**************************************************************
//Gruft in der Mine 
//**************************************************************
INSTANCE Stoneguardian_MineDead1	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_MineDead2	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_MineDead3	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_MineDead4	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
//**************************************************************
//	Steinw�chter	
//**************************************************************

INSTANCE Stoneguardian_Dead1	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	CreateInvItems (self, ItWr_HitPointStonePlate1_Addon, 1);									
};
INSTANCE Stoneguardian_Dead2	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_Dead3	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};

INSTANCE Stoneguardian_MerdarionsSchluessel	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	CreateInvItems (self, ITKE_PORTALTEMPELWALKTHROUGH_ADDON, 1);									
};

//**************************************************************
//	OrnamentSteinw�chter	
//**************************************************************

INSTANCE Stoneguardian_Ornament	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	CreateInvItem (self, ItMi_Ornament_Addon); 
};

//**************************************************************
//	im Geb�ude der Heiler	
//**************************************************************

INSTANCE Stoneguardian_Heiler	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	CreateInvItems (self, ITKE_Addon_Heiler,1); 
};
INSTANCE Stoneguardian_Sani01(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
INSTANCE Stoneguardian_Sani02(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
INSTANCE Stoneguardian_Sani03(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
INSTANCE Stoneguardian_Sani04(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
INSTANCE Stoneguardian_Sani05(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
INSTANCE Stoneguardian_Sani06(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
	aivar[AIV_EnemyOverride] = TRUE;
};
//**************************************************************
//	im Geb�ude der Heiler	
//**************************************************************

INSTANCE Stoneguardian_NailedPortalADW1	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_NailedPortalADW2	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 3100; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};

//**************************************************************
//	Showcase im Valley
//**************************************************************

INSTANCE Stoneguardian_NailedValleyShowcase_01	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_NailedValleyShowcase_02	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 1000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	B_SetVisuals_Stoneguardian ();
};

//**************************************************************
//	ADANOSTEMPEL
//**************************************************************

INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_01	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_02	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_03	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_04	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 900; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};

//--------------------------------------------------------------

INSTANCE Stoneguardian_TREASUREPITS_05A	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 3000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_TREASUREPITS_05B	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_TREASUREPITS_05C	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_TREASUREPITS_05D	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_TREASUREPITS_05E	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};
INSTANCE Stoneguardian_TREASUREPITS_05F	(Mst_Addon_Stoneguardian)
{
	aivar[AIV_MaxDistToWp]			= 2800; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();
};

//--------------------------------------------------------------

INSTANCE Stoneguardian_TREASUREPITS_09A	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};                                                                               
INSTANCE Stoneguardian_TREASUREPITS_09B	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};                                                                               
INSTANCE Stoneguardian_TREASUREPITS_09C	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};                                                                               
INSTANCE Stoneguardian_TREASUREPITS_09D	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};                                                                               
INSTANCE Stoneguardian_TREASUREPITS_09E	(Mst_Addon_Stoneguardian)                
{                                                                               
	aivar[AIV_MaxDistToWp]			= 2700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};                                                                               
INSTANCE Stoneguardian_TREASUREPITS_09F	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    

//--------------------------------------------------------------

INSTANCE Stoneguardian_RHADEMES_14A	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    
INSTANCE Stoneguardian_RHADEMES_14B	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 1200; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    
INSTANCE Stoneguardian_RHADEMES_14C	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    
INSTANCE Stoneguardian_RHADEMES_14D	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    
INSTANCE Stoneguardian_RHADEMES_14E	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 1200; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    
INSTANCE Stoneguardian_RHADEMES_14F	(Mst_Addon_Stoneguardian)                
{                                                                                
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] 	= FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Stoneguardian ();                                               
};    