// ***************************************************
// B_ClearDeadTrader (H�ndler die gellert werden sollen, wenn sie sterben!)
// ***************************************************

func void B_ClearDeadTrader (var C_NPC Trader)
{
	Npc_clearInventory (Trader);

	if (Trader.aivar[AIV_VictoryXPGiven] == FALSE)//Joly:gegen TraderExploid bei bewusstlos
	{
		B_CreateAmbientInv (Trader);
	};

};




