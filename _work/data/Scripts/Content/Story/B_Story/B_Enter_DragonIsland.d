
//###############################################
//##
//##	Die Dracheninsel
//##
//###############################################
FUNC VOID STARTUP_NEWWORLD_PART_DRAGON_ISLAND_01 ()
{
		
};
FUNC VOID INIT_NEWWORLD_PART_DRAGON_ISLAND_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
};

FUNC VOID STARTUP_NEWWORLD_PART_DRAGON_UNDEAD_01 ()
{
	
};

FUNC VOID INIT_NEWWORLD_PART_DRAGON_UNDEAD_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
};

FUNC VOID STARTUP_NEWWORLD_PART_DRAGON_FINAL_01 ()
{
	
};

FUNC VOID INIT_NEWWORLD_PART_DRAGON_FINAL_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
};

// ------ DRAGONISLAND -------
FUNC VOID STARTUP_DRAGONISLAND ()
{
	

	// ------ StartUps der Unter-Parts ------ 
	STARTUP_NEWWORLD_PART_DRAGON_ISLAND_01();
	STARTUP_NEWWORLD_PART_DRAGON_UNDEAD_01();
	STARTUP_NEWWORLD_PART_DRAGON_FINAL_01();

	PlayVideo ("SHIP.BIK");	 
	
	
	
	Log_CreateTopic (TOPIC_HallenVonIrdorath, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_HallenVonIrdorath, LOG_RUNNING);
	Log_AddEntry (TOPIC_HallenVonIrdorath,"Wir haben die Insel des Feindes erreicht. Innos weiß, welche Kreaturen im Innern dieses Berges auf mich warten werden."); 

	B_Kapitelwechsel (6, DRAGONISLAND_ZEN);
};


FUNC VOID INIT_DRAGONISLAND ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	CurrentLevel = DRAGONISLAND_ZEN;
	

	//----- Levelchange verbarrikadieren --------
	if (Npc_HasItems (hero,ITKE_SHIP_LEVELCHANGE_MIS))
	{
		Npc_RemoveInvItems	(hero,	ITKE_SHIP_LEVELCHANGE_MIS,1);	//Joly: denn SHIP zen wird bei DRAGONISLAND UND NEWWORLD benutzt. Beim betreten der Insel ist die Tür wieder zu!!!!
	};
	B_InitNpcGlobals (); 
};

