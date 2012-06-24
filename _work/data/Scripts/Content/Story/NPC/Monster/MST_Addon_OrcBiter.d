/*************************************************************************
**	OrcBiter Prototype													**
*************************************************************************/

PROTOTYPE Mst_Default_OrcBiter(C_Npc)			
{
	name							=	"Beisser";
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCBITER;
	level							=	20;
//----------------------------------------------------
	attribute	[ATR_STRENGTH]		= 150;
	attribute	[ATR_DEXTERITY]		= 150;
	attribute	[ATR_HITPOINTS_MAX]	= 270;
	attribute	[ATR_HITPOINTS]		= 270;
	attribute	[ATR_MANA_MAX] 		= 0;
	attribute	[ATR_MANA] 			= 0;
//----------------------------------------------------
	protection	[PROT_BLUNT]		= 165;
	protection	[PROT_EDGE]			= 165;
	protection	[PROT_POINT]		= 165;
	protection	[PROT_FIRE]			= 165;
	protection	[PROT_FLY]			= 165;
	protection	[PROT_MAGIC]		= 135;
//----------------------------------------------------
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//----------------------------------------------------
	fight_tactic					=	FAI_SCAVENGER;
//----------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;

//	aivar[AIV_MM_Behaviour]		= HUNTER;
	
//	aivar[AIV_MM_PercRange]		= 1200;
//	aivar[AIV_MM_DrohRange]		= 1000;
//	aivar[AIV_MM_AttackRange]	= 700;
//	aivar[AIV_MM_DrohTime]		= 5;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------
func void Set_OrcBiter_Visuals()
{
	Mdl_SetVisual			(self,	"Scavenger.mds");
	Mdl_ApplyOverlayMds 	(self,	"Orcbiter.mds"); // eigener Run-Loop
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sc2_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	OrcBiter    														**
*************************************************************************/

INSTANCE OrcBiter (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
};

INSTANCE OrcBiter_01 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_02 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_03 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_04 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_05 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_06 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_07 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_08 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_09 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};

INSTANCE OrcBiter_10 (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	
	B_SetSchwierigkeit(self);
};
