FUNC VOID SEKUNDENFUNC_01 ()
{	
	if (Npc_GetDistToWP(hero, "ANFANG") > 1000)
	&& ((((hero.exp - EXP_LastLevel) * 100)/(hero.exp_next - EXP_LastLevel)) >= 75)
	{
		if (C_BodyStateContains(hero, BS_RUN))
		|| (C_BodyStateContains(hero, BS_HIT))
		|| (C_BodyStateContains(hero, BS_PARADE))
		{
			Mod_WaveTime_Counter += 1;

			if (Mod_WaveTime_Counter == 180)
			{
				B_AllMonstersDead();
			};
		};
	};

	// Spielstart erstmal Username eingeben

	var int Mod_OnlineMode2;
	Mod_OnlineMode2 = STR_ToInt(MEM_GetGothOpt("METZEL", "online"));

	if (Mod_OnlineMode2 == 0)
	&& (Mod_OnlineMode == 1)
	{
		// wurde umgeschalten von Offline auf Online

		ValidateUserPasswort = 1;

		Mod_OnlineMode = 0;

		Offline_Modus = 0;
	};

	if (Mod_OnlineMode2 == 1)
	&& (Mod_OnlineMode == 0)
	{
		// wurde umgeschalten von Online auf Offline

		B_EndGame();

		Mod_OnlineMode = 1;

		Offline_Modus = 1;
	};

	if (GetInput == 0)
	&& (ValidateUserPasswort < 3)
	&& (Mod_OnlineMode == 0)
	{
		if (STR_Len(username) == 0)
		&& (STR_Len(eingabe) == 0)
		&& (Offline_Modus == 0)
		{
			B_StartEingabe();

			PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 5);
		}
		else if (STR_Len(passwort) == 0)
		&& (STR_Len(eingabe) == 0)
		&& (Offline_Modus == 0)
		{
			B_StartEingabe();

			PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 5);
		}
		else
		{
			eingabe = "";
		};

		if (STR_Len(passwort) > 1)
		&& (STR_Len(username) > 1)
		&& (ValidateUserPasswort == 0)
		&& (Offline_Modus == 0)
		{
			ValidateUserPasswort = TRUE;
		};

		if (STR_Len(username) > 1)
		&& (STR_Len(eingabe) > 0)
		&& (STR_Len(passwort) <= 1)
		{
			eingabe = "";
		};

		if (validateUserPasswort == 2)
		{
			validateUserPasswort = 3;
		};

		if (validateUserPasswort == 1)
		{
			eingabe = "";
			var string testup;
			testup = ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/validatePW.php?name=", username);
			testup = ConcatStrings(testup, "&passwort=");
			testup = ConcatStrings(testup, passwort);
			testup = ConcatStrings(testup, "&game=9");

			eingabe = CURL_Get(testup);

			validateUserPasswort = 2;

			if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("Y", 0))
			{
				PrintScreen	("Passwort korrekt", -1, 55, FONT_SCREEN, 2);

				var int release;
				var int beta;

				eingabe = STR_Tok(eingabe, ";");
				eingabe = STR_Tok("NULL", ";"); // für Releaseversionen

				release = STR_ToInt(eingabe);

				eingabe = STR_Tok("NULL", ";"); // für Betas

				beta = STR_ToInt(eingabe);

				if (beta > 1)
				{
					PrintScreen	("Neuere Version erhältlich!", -1, 60, FONT_SCREEN, 10);
				};

				MEM_SetGothOpt("CLOCKWORK", "username", username);
				MEM_SetGothOpt("CLOCKWORK", "passwort", passwort);
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("N", 0))
			{
				PrintScreen	("Passwort falsch", -1, 55, FONT_SCREEN, 2);

				MEM_SetGothOpt("CLOCKWORK", "username", "0");
				MEM_SetGothOpt("CLOCKWORK", "passwort", "0");

				username = "";
				passwort = "";

				eingabe = "";

				validateUserPasswort = 0;
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("E", 0))
			{
				PrintScreen	("Verbindung kann zur Zeit nicht hergestellt werden!", -1, 55, FONT_SCREEN, 2);
				PrintScreen	("Spiel jetzt im Offline-Modus", -1, 60, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("B", 0))
			{
				PrintScreen	("Dein Account wurde gebannt!", -1, 55, FONT_SCREEN, 2);
				PrintScreen	("Spiel jetzt im Offline-Modus", -1, 60, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			}
			else
			{
				PrintScreen	("Unbekannter Fehler", -1, 55, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			};
		};
	};

	if (online_playtime >= 1800)
	&& (Offline_Modus == 0)
	{
		CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/actualizePlaytime.php?name=", username), "&game=9&time="), IntToString(online_playtime)));
		online_playtime = 0;
	};

	online_playtime += 1;
	online_playtime_s = IntToString(online_playtime);

	if (Mod_SaveOther == 0)
	{
		Npc_GetTarget(hero);

		if (Hlp_IsValidNpc(other))
		{
			if (Npc_IsInState(other, ZS_Talk))
			{
				Mod_SaveOther = 1;

				Mod_SaveNpc = Hlp_GetNpc(other);
			};
		};
	};

	Wld_SendTrigger	("SEKUNDENTRIGGER");
};