// **************************
// B_GiveDeathInv
// --------------
// für Menschen und Monster
// gibt Monstern AnimalTrophy
// **************************

func void B_GiveDeathInv (var C_NPC slf)
{
	// EXIT IF...
	slf.aivar[AIV_DeathInvGiven] = TRUE;

	return;
};










