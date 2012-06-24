instance Mein_Schleifen_Trigger (oCTriggerScript);

FUNC VOID ChangeStatusMenu (var string field, var string text)
{
	//Ein Menüitem holen:
	var zCMenuItem itm;
	var int itmPtr; itmPtr = MEM_GetMenuItemByString (field);
	
	if (itmPtr)
	{
		//Menüitem gefunden.
		MEM_AssignInst (itm, itmPtr);
		
		if (itm.m_pInnerWindow)
		{
			//Das Menüitem hat gerade ein InnerWindow (zeigt etwas an)
			var zCView innerView;
			MEM_AssignInst (innerView, itm.m_pInnerWindow);
			
			if (innerView.textLines_next)
			{
				//Das Innerwindow hat (mindestens) eine Zeile, nehme die erste.
				var zCList listele;
				MEM_AssignInst (listele, innerView.textLines_next);
				
				var zCViewText firstLine;
				MEM_AssignInst (firstLine, listele.data);
				
				//Statt "gildenlos" steht in jedem Frame ein anderer Zufallsstring dort.	
				firstLine.text = text;
			}
			else
			{
				PrintDebug("no Text"); //tritt hier nicht auf.
			};
		}
		else
		{
			PrintDebug ("no inner Window"); //tritt auf, falls das Charaktermenü gerade nicht offen ist.
		};
	}
	else
	{
		PrintDebug ("no Item"); //tritt auf, falls das Charaktermenü noch nicht offen war.
	};
};

FUNC VOID FRAMEFUNC ()
{
	// Es wird gleich MEM_Timer genutzt, der muss initialisiert sein
	MEM_InitGlobalInst();

	// Triggernachricht senden
	Wld_SendTrigger ("FRAMETRIGGER"); //ruft meineSchleifenFunktion auf

	// Funktionsteil

	if (CurrentLevel2 != 0)
	{
		if (CurrentLevel == 0) // Erster Spielstart
		{
			CurrentLevel = CurrentLevel2;

			Offline_Modus = FALSE;
			ValidateUserPasswort = 0;
		}
		else if (CurrentLevel != CurrentLevel2) // Levelwechsel
		{
			CurrentLevel = CurrentLevel2;
		}
		else	// Spielstand geladen
		{
			Offline_Modus = FALSE;
			ValidateUserPasswort = 1;

			Mod_OnlineMode = 0;

			if (STR_ToInt(online_playtime_s) > 0)
			{
				CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/actualizePlaytime.php?name=", username), "&game=9&time="), online_playtime_s));
			};

			online_playtime = 0;
		};

		CurrentLevel2 = 0;
	};

	if (GetInput)
	{
		if (MEM_KeyState(KEY_RETURN) == KEY_PRESSED)
		{
			B_EndEingabe();

			if (STR_Len(username) == 0)
			{
				PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 1);

				username = eingabe;
			}
			else if (STR_Len(passwort) == 0)
			{
				PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 1);

				passwort = eingabe;
			};
		}
		else
		{
			if (STR_Len(username) == 0)
			{
				PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 1);

				eingabe = B_GetEingabe(eingabe);
			}
			else if (STR_Len(passwort) == 0)
			{
				PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 1);

				eingabe = B_GetEingabe(eingabe);
			};
		};

		PrintScreen	(eingabe, -1, -1, FONT_SCREENSMALL, 1);
	};

	ObserveConsole();
	ShowBars();

	//FDL_FRAMEUPDATE();

	// Triggerscript holen:
	var int ptr; ptr = MEM_SearchVobByName ("FRAMETRIGGER");
	MEM_AssignInst (Mein_Schleifen_Trigger, ptr);
	
	Mein_Schleifen_Trigger._zCVob_nextOnTimer = MEM_Timer.totalTimeFloat; //wäre eigentlich jetzt schon wieder dran, wird aber erst im nächsten Frame bemerkt
};