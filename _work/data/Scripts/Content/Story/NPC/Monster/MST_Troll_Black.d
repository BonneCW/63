//******************************
//	Schwarzer Troll Prototype	
//******************************

PROTOTYPE Mst_Default_Troll_Black(C_Npc)			
{
	//----- Monster ----
	name							=	"Schwarzer Troll";
	guild							=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]			= 	ID_TROLL_BLACK;
	level							=	57; //40
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	1000;
	attribute	[ATR_DEXTERITY]		=	1000;
	attribute	[ATR_HITPOINTS_MAX]	=	1950;
	attribute	[ATR_HITPOINTS]		=	1950;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protections ----	
	protection	[PROT_BLUNT]		=	1000;
	protection	[PROT_EDGE]			=	1000;
	protection	[PROT_POINT]		=	1000;	
	protection	[PROT_FIRE]			=	1000;
	protection	[PROT_FLY]			=	1000;	
	protection	[PROT_MAGIC]		=	1000;
	
	//------------------------------------------------------	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_TROLL;

	//----- Daily Routine ----	
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
};


//****************
//	Visuals
//****************



func void B_SetVisuals_Troll_Black()
{
	Mdl_SetVisual			(self,	"Troll.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Troll_Black_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************************
//	Schwarzer Troll    		
//************************
INSTANCE Troll_Black	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
};
INSTANCE Troll_Black_01	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_02	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_03	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_04	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_05	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_06	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_07	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_08	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_09	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
INSTANCE Troll_Black_10	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
