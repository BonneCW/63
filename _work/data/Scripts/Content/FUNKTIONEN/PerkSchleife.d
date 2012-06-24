var int SlowmotionCooldown;

FUNC VOID PerkSchleife()
{
	// Slowmotion

	if (Slowmotion_Perk == TRUE)
	{
		SlowMotion();

		SlowMotionCooldown += 1;

		if (Mod_InKlassenMenu == TRUE)
		{
			Wld_StopEffect("SLOW_MOTION_1");
			Wld_StopEffect("SLOW_MOTION_2");
			Wld_StopEffect("SLOW_MOTION_3");
			Wld_StopEffect("SLOW_MOTION_4");
			Wld_StopEffect("SLOW_MOTION_5");
			Wld_StopEffect("SLOW_MOTION_6");

			BT_on = FALSE;
		};

		if (BT_on == TRUE)
		{
			if (SlowmotionCooldown >= 20)
			{
				Slowmotiontime -= 1;

				if (Slowmotiontime < 0)
				{
					Slowmotiontime = 0;
				};

				if (Slowmotiontime == 0)
				{
					Wld_StopEffect("SLOW_MOTION_1");
					Wld_StopEffect("SLOW_MOTION_2");
					Wld_StopEffect("SLOW_MOTION_3");
					Wld_StopEffect("SLOW_MOTION_4");
					Wld_StopEffect("SLOW_MOTION_5");
					Wld_StopEffect("SLOW_MOTION_6");

					BT_on = FALSE;
				};

				SlowmotionCooldown = 0;
			};
		}
		else
		{
			if (SlowmotionCooldown >= 50)
			{
				if (Slowmotiontime < Slowmotiontime_Max)
				{
					SlowMotionTime += 1;
				};

				if (Slowmotiontime > Slowmotiontime_Max)
				{
					Slowmotiontime = Slowmotiontime_MAX;
				};

				SlowmotionCooldown = 0;
			};
		};
	};

	// Regeneration

	// HP
	
	if (HPReg_Perk == TRUE)
	{
		HPCounter += 1;

		if (HPRegBei == 200)
		{
			hero.attribute[ATR_HITPOINTS] += 1;

			if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			};

			HPCounter = 0;
		};

		if (HPRegBei == 100)
		{
			hero.attribute[ATR_HITPOINTS] += 4;

			if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			};

			HPCounter = 0;
		};

		if (HPCounter >= HPRegBei*2)
		{
			hero.attribute[ATR_HITPOINTS] += 1;

			if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			};

			HPCounter = 0;
		};
	};

	// Mana
	
	if (MANAReg_Perk == TRUE)
	{
		MANACounter += 1;

		if (MANARegBei == 200)
		{
			hero.attribute[ATR_MANA] += 1;

			if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
			{
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			};

			MANACounter = 0;
		};

		if (MANARegBei == 100)
		{
			hero.attribute[ATR_MANA] += 2;

			if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
			{
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			};

			MANACounter = 0;
		};

		if (MANACounter >= MANARegBei*2)
		{
			hero.attribute[ATR_MANA] += 1;

			if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
			{
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			};

			MANACounter = 0;
		};
	};
};