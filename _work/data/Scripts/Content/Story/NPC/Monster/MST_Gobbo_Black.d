//*************************
//	BlackGobbo Prototype	
//*************************

PROTOTYPE Mst_Default_Gobbo_Black(C_NPC)			
{
	//----- Monster ----
	name							=	"schwarzer Goblin";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_BLACK;
	level							=	17;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	220;
	attribute	[ATR_DEXTERITY]		=	120;
	attribute	[ATR_HITPOINTS_MAX]	=	210;
	attribute	[ATR_HITPOINTS]		=	210;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	135;
	protection	[PROT_EDGE]			=	135;
	protection	[PROT_POINT]		=	135;
	protection	[PROT_FIRE]			=	135;
	protection	[PROT_FLY]			=	135;
	protection	[PROT_MAGIC]		=	105;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Black()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		1,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Black (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Black_01 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_02 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_03 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_04 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_05 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_06 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_07 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_08 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_09 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

INSTANCE Gobbo_Black_10 (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
	
	B_SetSchwierigkeit(self);
};

// ***********
// Gobbo_DaronsStatuenKlauer   	
// ***********
INSTANCE Gobbo_DaronsStatuenKlauer (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	CreateInvItems (self, ItMi_LostInnosStatue_Daron, 1);									
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace); //Waffe ist nur Optik - Schaden wird NUR �ber STR bestimmt (Gobbo ist als Monster im Fistmode)
};
