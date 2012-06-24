FUNC VOID B_CountMonster (var C_NPC slf)
{
	if (slf.guild < GIL_SEPERATOR_HUM)
	{
		return;
	};

	if (Npc_GetDistToWP(slf, "TOT") < 1000)
	{
		return;
	};

	if (slf.attribute[ATR_HITPOINTS] == 0)
	{
		return;
	};

	Monster_Alive += 1;
};