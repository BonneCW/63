instance Ausstatter (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ausstatter";
	guild 		= GIL_OUT;
	id 			= 10;
	voice 		= 12;
	flags      	= 2;
	npctype		= NPCTYPE_FRIEND;
	
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);

	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	aivar[AIV_IgnoresArmor] 		= TRUE;
	
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	// ------ Inventory ------
	B_CreateAmbientInv (self); 
	
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Cavalorn, BodyTex_B, ITAR_VLK_L);	
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 65); 

	// ------ TA anmelden ------
	daily_routine 	= Rtn_PreStart_10;
};

FUNC VOID Rtn_PreStart_10 ()
{
	TA_Stand_Guarding	(22,30,07,30,"AUSSTATTER");
	TA_Stand_Guarding	(07,30,22,30,"AUSSTATTER");
};