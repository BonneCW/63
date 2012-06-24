FUNC VOID B_SetMagicDamage()
{
	if (WaveCounter > 60)
	{
		SPL_Damage_Zap = 120;
		SPL_Damage_BreathOfDeath = 1250;
		SPL_Damage_ChargeFireball = 227;
		SPL_Damage_ChargeZap = 105;
		SPL_Damage_DESTROYUNDEAD = 3000;
		SPL_Damage_EnergyBall = 700;
		SPL_Damage_Firebolt = 103;
		SPL_Damage_InstantFireStorm = 350;
		SPL_Damage_FireRain = 1000;
		SPL_Damage_Geyser = 525;
		SPL_Damage_IceBolt = 175;
		SPL_Damage_Icelance = 350;
		SPL_Damage_InstantFireball = 265;
		SPL_Damage_LightningFlash = 450;
		SPL_Damage_MassDeath = 2000;
		SPL_Damage_PalDestroyEvil = 1200;
		SPL_Damage_PalHolyBolt = 300;
		SPL_Damage_PalRepelEvil = 900;
		SPL_Damage_FireStorm = 265;
		SPL_Damage_Skull = 1665;
		SPL_Damage_Waterfist = 377;
		SPL_Damage_WindFist = 175;
	}
	else if (WaveCounter > 50)
	{
		SPL_Damage_Zap = 105;
		SPL_Damage_BreathOfDeath = 1000;
		SPL_Damage_ChargeFireball = 189;
		SPL_Damage_ChargeZap = 90;
		SPL_Damage_DESTROYUNDEAD = 2500;
		SPL_Damage_EnergyBall = 600;
		SPL_Damage_Firebolt = 90;
		SPL_Damage_InstantFireStorm = 300;
		SPL_Damage_FireRain = 750;
		SPL_Damage_Geyser = 450;
		SPL_Damage_IceBolt = 150;
		SPL_Damage_Icelance = 300;
		SPL_Damage_InstantFireball = 227;
		SPL_Damage_LightningFlash = 375;
		SPL_Damage_MassDeath = 1500;
		SPL_Damage_PalDestroyEvil = 900;
		SPL_Damage_PalHolyBolt = 250;
		SPL_Damage_PalRepelEvil = 750;
		SPL_Damage_FireStorm = 227;
		SPL_Damage_Skull = 1332;
		SPL_Damage_Waterfist = 314;
		SPL_Damage_WindFist = 150;
	}
	else if (WaveCounter > 40)
	{
		SPL_Damage_Zap = 90;
		SPL_Damage_BreathOfDeath = 750;
		SPL_Damage_ChargeFireball = 151;
		SPL_Damage_ChargeZap = 75;
		SPL_Damage_DESTROYUNDEAD = 2000;
		SPL_Damage_EnergyBall = 500;
		SPL_Damage_Firebolt = 77;
		SPL_Damage_InstantFireStorm = 250;
		SPL_Damage_Geyser = 375;
		SPL_Damage_IceBolt = 125;
		SPL_Damage_Icelance = 250;
		SPL_Damage_InstantFireball = 189;
		SPL_Damage_LightningFlash = 300;
		SPL_Damage_PalHolyBolt = 200;
		SPL_Damage_PalRepelEvil = 600;
		SPL_Damage_FireStorm = 189;
		SPL_Damage_Skull = 999;
		SPL_Damage_Waterfist = 251;
		SPL_Damage_WindFist = 125;
	}
	else if (WaveCounter > 30)
	{
		SPL_Damage_Zap = 75;
		SPL_Damage_ChargeFireball = 113;
		SPL_Damage_ChargeZap = 60;
		SPL_Damage_DESTROYUNDEAD = 1500;
		SPL_Damage_EnergyBall = 400;
		SPL_Damage_Firebolt = 64;
		SPL_Damage_InstantFireStorm = 200;
		SPL_Damage_Geyser = 300;
		SPL_Damage_IceBolt = 100;
		SPL_Damage_Icelance = 200;
		SPL_Damage_InstantFireball = 151;
		SPL_Damage_LightningFlash = 225;
		SPL_Damage_PalHolyBolt = 200;
		SPL_Damage_PalRepelEvil = 450;
		SPL_Damage_FireStorm = 151;
		SPL_Damage_Waterfist = 188;
		SPL_Damage_WindFist = 100;
	}
	else if (WaveCounter > 20)
	{
		SPL_Damage_Zap = 60;
		SPL_Damage_ChargeZap = 45;
		SPL_Damage_EnergyBall = 300;
		SPL_Damage_Firebolt = 51;
		SPL_Damage_InstantFireStorm = 150;
		SPL_Damage_Geyser = 225;
		SPL_Damage_IceBolt = 75;
		SPL_Damage_Icelance = 150;
		SPL_Damage_InstantFireball = 113;
		SPL_Damage_PalHolyBolt = 150;
		SPL_Damage_FireStorm = 113;
		SPL_Damage_WindFist = 75;
	}
	else if (WaveCounter > 10)
	{
		SPL_Damage_Zap = 50;
		SPL_Damage_Firebolt = 50;
	}
	else
	{
		SPL_Damage_Zap = 40;
		SPL_Damage_BreathOfDeath = 500;
		SPL_Damage_ChargeFireball = 75;
		SPL_Damage_ChargeZap = 30;
		SPL_Damage_DESTROYUNDEAD = 1000;
		SPL_Damage_EnergyBall = 200;
		SPL_Damage_Firebolt = 40;
		SPL_Damage_InstantFireStorm = 100;
		SPL_Damage_FireRain = 500;
		SPL_Damage_Geyser = 150;
		SPL_Damage_IceBolt = 50;
		SPL_Damage_Icelance = 100;
		SPL_Damage_InstantFireball = 75;
		SPL_Damage_LightningFlash = 150;
		SPL_Damage_MassDeath = 500;
		SPL_Damage_MasterOfDisaster = 300;
		SPL_Damage_PalDestroyEvil = 600;
		SPL_Damage_PalHolyBolt = 100;
		SPL_Damage_PalRepelEvil = 300;
		SPL_Damage_FireStorm = 75;
		SPL_Damage_Skull = 666;
		SPL_Damage_Waterfist = 125;
		SPL_Damage_WindFist = 50;
	};
};