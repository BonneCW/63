// ***********************************************************
// B_GetLearnCostAttribute
// -----------------------
// ermittelt die Kosten eines Attributspunktes (abh. v. Gilde)
// ***********************************************************
	
func int B_GetLearnCostAttribute (var C_NPC oth, var int attribut)
{
	var int kosten; kosten = 0;

	// ------ Kosten f�r St�rke ------
	if (attribut == ATR_STRENGTH) 
	{
		kosten = (1);
	};
	
	// ------ Kosten f�r Dexterity ------
	if (attribut == ATR_DEXTERITY) 
	{
		kosten = (1);
	};
	
	// ------ Kosten f�r Mana MAX ------
	if (attribut == ATR_MANA_MAX)
	{		
		kosten = (1);
	};
	
	// ------ Kosten f�r Mana MAX ------
	if (attribut == ATR_HITPOINTS_MAX)
	{		
		kosten = (1);
	};
	
	return kosten;
};
