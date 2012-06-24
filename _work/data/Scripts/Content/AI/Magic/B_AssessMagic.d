// ******************************************************************
// B_AssessMagic
// -------------
// Wahrnehmung ist f�r ALLE NSCs IMMER aktiv
// auch f�r den Spieler (s.u.)
// wir aufgerufen, sobald irgendein Spruch auf einen NSC wirkt
// setzt den NSC dan in den entsprechenden ZS
// die meisten Spells f�hren allerdings zu keinem ZS
// (sind unten nicht ber�cksichtigt)
// ------------------------------------------------------------------
// Beachtem: if (Npc_GetLastHitSpellID(self) == SPL_Sleep) funzt nicht,
// weil Sleep INSTANT wirkt (d.h. sofort SENDCAST zur�ckliefert)
// und beim Aufruf von B_AssessMagic NICHT mehr "Active" ist!
// ******************************************************************


func void B_AssessMagic ()
{
	B_Praxiserfahrung	(other, self);

	if (Orktoeter_Perk == TRUE)
	&& ((self.guild == GIL_ORC)
	|| (self.guild == GIL_FRIENDLY_ORC))
	{
		B_MagicHurtNpc	(other, self, 50);
	};

	// ------ Bei ALLEN Spells. Damit andere NSCs den Angriff wahrnehmen k�nnen ------
	if (Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc	(self, PERC_ASSESSFIGHTSOUND, self, other);
	};
	
//###	Addon ###	
	
	// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Whirlwind, 0, "");
		return;
	};
	// ---- Icelance ---
	// ---- Thunderstorm ----
	// ---- Geyser ----
	// ---- Waterfist ----
	// ---- SuckEnergy ----
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_SuckEnergy, 0, "");
		return;
	};
	// ---- GreenTentacle ----
	if (Npc_GetLastHitSpellID(self) == SPL_Greententacle)	
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState	(self, ZS_Greententacle, 0, "");
		return;
		
	};
	// ---- SummonGuardian ----
	// ---- Swarm ----
	if (Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Swarm, 0, "");
		return;
	};
	// ---- SummonZombie ----
	// ---- Skull ----
	
	// ------ IceCube, IceWave ------
	if (Npc_GetLastHitSpellID(self) == SPL_IceCube)
	|| (Npc_GetLastHitSpellID(self) == SPL_IceWave)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicFreeze, 0, "");
		return;
	};
	
	// ------ ChargeZap ------
	if (Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_ShortZapped, 0, "");
		return;
	};

	// ------ Fear ------
	if (Npc_GetLastHitSpellID(self) == SPL_Fear)	
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self,	other);
			
		AI_Flee	(self);

		return;
	};
	
	// Firespells senden ein ASSESSMAGIC bei Kollision
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)		
	{	
		Npc_ClearAIQueue	(self);
		//B_ClearPerceptions	(self);	//Sonst reagiert der NPC nicht!
		AI_StartState(self, ZS_MagicBurnShort, 0, "");
		return;
	};
		
};


// ***************************************************
// Anmeldung der AssessMagic-Wahrnehmung beim Spieler
// (auch wenn der Spieler NICHT zustandsgesteuert ist)
// Spieler hat also IMMER PERC_ASSESSMAGIC aktiv
// ***************************************************

const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 	


	

