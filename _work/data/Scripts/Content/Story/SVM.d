// *********************
// Standard	Voice Module
// *********************

CLASS C_SVM
{
	// ------ B_Say_GuildGreetings ------
	var string MILGreetings;				//Miliz gr��t Miliz oer Paladin
	var string PALGreetings;				//Paladin gr��t Paladin oder Magier
	var string Weather;						//So ein Mistwetter!
	
	// ------ B_Say_AttackReason ------
	var string IGetYouStill;				//Upset-NSC sieht Spieler w�hrned seiner Angry-Time wieder. Greift mit altem AttackReason an.
	var string DieEnemy;					//Feind wird angegriffen
	var string DieMonster;					//gef�hrliches Monster wird angegriffen
	var string Addon_DieMonster;
	var string Addon_DieMonster2;
	var string DirtyThief;					//Dieb wird angegriffen
	var string HandsOff;					//SC fummelt an Objekt rum
	var string SheepKiller;					//Mensch greift Schaf an
	var string SheepKillerMonster;			//Monster greift Schaf an
	var string YouMurderer;					//Mensch hat Menschen umgebracht (kein Feind)
	var string DieStupidBeast;				//Torwachen schlagen ungef�hliches Monster tot, das versucht durchs Tor zu gehen	
	var string YouDareHitMe;				//SC hat NSC geschlagen
	var	string YouAskedForIt;				//SC hat trotz Aufforderung seine Waffe NICHT weggesteckt
	var string ThenIBeatYouOutOfHere;		//SC hat trotz Aufforderung Raum NICHT verlassen 
	var string WhatDidYouDoInThere;			//Wache sieht SC aus einem verbotenen Raum rauskommen und greift an
	var string WillYouStopFighting;			//Wache beendet Kampf, greift T�ter an
	
	// ------ B_Say_AttackEND ------
	var string KillEnemy;					//Finishing-Move
	var string EnemyKilled;					//NSC hat Feind get�tet
	var string MonsterKilled;				//NSC hat gef�hrliches Monster get�tet
	var string Addon_MonsterKilled;			
	var string Addon_MonsterKilled2;	
	var string ThiefDown;					//NSC hat Item-Dieb niedergeschlagen
	var string RumfummlerDown;				//NSC hat verbotenes-MOBSI-Benutzer niedergeschlagen
	var string SheepAttackerDown;			//NSC hat human SheepAttacker oder SheepKiller umgehauen
	var string KillMurderer;				//M�rder finishen
	var string StupidBeastKilled;			//GateGuards t�ten neutrales Monster, das vorbeikam
	var string NeverHitMeAgain;				//NSC hat jemand niedergeschlagen, der ihn angegriffen hat
	var string YouBetterShouldHaveListened;	//NSC hat jemed niedergeschlagen, der die Waffe nicht weggesteckt hat
	var string GetUpAndBeGone;				//NSC hat einen Eindringling im Portalraum niedergeschlagen
	var string NeverEnterRoomAgain;			//NSC hat Spieler, der aus verbotenem Portalraum kam niedergeschlagen
	var string ThereIsNoFightingHere;		//Wache hat T�ter einer Schl�gerei (derjenige, der angefangen hat) niedergeschlagen

	// ------ C_WantToFlee ------ 
	var string SpareMe;						//Tu mir nichts!
	var string RunAway;						//Schei�e! Nichts wie weg!		

	// ------ C_WantToCallGuardsForFight ------
	var	string Alarm;						//Wache ruft Wache
	var string Guards;						//Harter Bursche ruft Wache
	var string Help;						//B�rger ruft Hilfe
		
	// ------ B_AssessMurder ------
	var string GoodMonsterKill;				//Monster get�tet - NSC findet das toll
	var string GoodKill;					//Mensch get�tet - NSC findet das toll (war sein Feind)
	
	// ------ B_AssessTalk ------
	var string NOTNOW;						//wenn RefuseTalk Counter aktiv
	
	// ------ ZS_Attack ------
	var string RunCoward;					//Gegner flieht
	
	// ------ ZS_ClearRoom ------
	var string GetOutOfHere;				//Spieler in verbotenem Raum. Harter Bursche: Raus hier!
	var string WhyAreYouInHere;				//Spieler in verbotenem Raum. Weicher Bursche: Was willst du hier?
	var string YesGoOutOfHere;				//Spieler verl��t verboten Raum artig wieder

	// ------ ZS_ObservePlayer ------
	var string WhatsThisSupposedToBe;		//NSC sieht Spieler schleichen
	var	string YouDisturbedMySlumber;		//NSC wurde von SC durch QuietSound geweckt

	// ------ ZS_RansackBody ------
	var string ITookYourGold;			 
	var string ShitNoGold;				
	var string ITakeYourWeapon;	

	// ------ ZS_ReactToDamage ------
	VAR	string WhatAreYouDoing;				//NSC wird von einem FRIENDLY-SC/NSC geschlagen
	
	// ------ ZS_ReactToWeapon ------
	var string LookingForTroubleAgain;		//SC hat Kampf verloren "Willst du nochmal was aufs Maul?"
	var string StopMagic;					
	var string ISaidStopMagic;				
	var string WeaponDown;	
	var string ISaidWeaponDown;
	VAR	string WiseMove;					//Spieler hat Waffe/Spruch weggesteckt
	
	// ------ ZS_Unconscious ------
	var string NextTimeYoureInForIt;		//Harter Bursche steht auf, nachdem er niedergeschlagen wurde (murmelt zu sich selbst)
	var string OhMyHead;					//Weicher Bursche steht auf, nachdem er niedergeschlagen wurde (murmelt zu sich selbst)
	
	// ------ ZS_WatchFight ------
	var	string TheresAFight;				//NSC entdeckt einen Kampf, und findet das toll
	var string OhMyGodItsAFight;			//NSC entdeckt einen Kampf, und findet das best�tzend (B�rger)
	var string GoodVictory;					//Dem Sieger zujubeln
	var string NotBad;						//'Nicht schlecht...' - Kampfende - Freund wurde von Nicht-Freund besiegt
	var string OhMyGodHesDown;				//Best�rzung �ber brutales Niederschlagen
	var string CheerFriend01;				//Freund landet	einen Treffer. 'Immer in die Fresse!'
	var string CheerFriend02;
	var string CheerFriend03;
	var string Ooh01;						//Freund kriegt	aufs Maul. 'Mist - das tat weh.'
	var string Ooh02;
	var string Ooh03;
	
	// ------ ZS_MagicSleep ------
	var string WhatWasThat;     			//Wenn NSC aus Magic Sleep erwacht
	
	// ------ TA_Sleep ------
	var string GetOutOfMyBed;				//Raus aus meinem Bett!
	var string Awake;						//NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, r�keln)
	
	// ------ B_AssignAmbientNEWS ------
	var string ABS_COMMANDER;				//Ich h�rte, du warst beim Kommandanten und hast die Sache wieder in Ordnung gebracht.
	var string ABS_MONASTERY;				//Ich h�rte, du warst bei Vater Parlan und hast Bu�e getan.
	var string ABS_FARM;					//Ich h�rte, du warst bei Lee und und hast die Sache wieder in Ordnung gebracht.
	var string ABS_GOOD;
	// ---------------------------------
	var string SHEEPKILLER_CRIME; 			//Einfach unsere Schafe zu schlachten! Mach, da� du hier wegkommst!
	var string ATTACK_CRIME;				//Mit miesen Schl�gern rede ich nicht!
	var string THEFT_CRIME;					//Geh mir aus den Augen, dreckiger Dieb!
	var string MURDER_CRIME;				//Mit gemeinen M�rdern rede ich nicht.
	// ---------------------------------
	var string PAL_CITY_CRIME; 				//Du bist eine Schande f�r deinen Orden! Lord Hagen wird toben vor Wut!
	var string MIL_CITY_CRIME;				//Du bist eine Schande f�r die Stadtwache! Lord Andre wird dir das sicher austreiben!
	var string CITY_CRIME;					//Lord Andre wird von deiner Tat erfahren!
	// ---------------------------------
	var string MONA_CRIME;					//Dein Frevel wird Vater Parlan sicherlich nicht erfreuen!
	var string FARM_CRIME; 					//Lee wird dir die Hammelbeine langziehen! Wirst schon sehen, was du davon hast!
	var string OC_CRIME; 					//Kommandant Garond wird dich zur Rechenschaft ziehen!

	// ------ B_Say_ToughGuyNews ------
	var string TOUGHGUY_ATTACKLOST;			//Spieler hat einen ToughGuy angegriffen und gewonnen
	var string TOUGHGUY_ATTACKWON;			//Spieler hat einen ToughGuy angegriffen und ist besiegt worden
	var string TOUGHGUY_PLAYERATTACK;		//Spieler hat einen ToughGuy angegriffen und den Kampf abgebrochen	
	
	// ------ GOLD ------
	var string GOLD_1000;					//1000 Goldst�cke.
	var string GOLD_950;					//950 Goldst�cke.
	var string GOLD_900;					//900 Goldst�cke.
	var string GOLD_850;					//850 Goldst�cke.
	var string GOLD_800;					//800 Goldst�cke.
	var string GOLD_750;					//750 Goldst�cke.
	var string GOLD_700;					//700 Goldst�cke.
	var string GOLD_650;					//650 Goldst�cke.
	var string GOLD_600;					//600 GOldst�cke.
	var string GOLD_550;					//550 Goldst�cke.
	var string GOLD_500;					//500 Goldst�cke.
	var string GOLD_450;					//450 Goldst�cke.
	var string GOLD_400;					//400 Goldst�cke.
	var string GOLD_350;					//350 Goldst�cke.
	var string GOLD_300;					//300 Goldst�cke.
	var string GOLD_250;					//250 Goldst�cke.
	var string GOLD_200;					//200 Goldst�cke.
	var string GOLD_150;					//150 Goldst�cke.
	var string GOLD_100;					//100 Goldst�cke.
	var string GOLD_90;						//90 Goldst�cke.
	var string GOLD_80;						//80 Goldst�cke.
	var string GOLD_70;						//70 Goldst�cke.
	var string GOLD_60;						//60 Goldst�cke.
	var string GOLD_50;						//50 Goldst�cke.
	var string GOLD_40;						//40 Goldst�cke.
	var string GOLD_30;						//30 Goldst�cke.
	var string GOLD_20;						//20 Goldst�cke.
	var string GOLD_10;						//10 Goldst�cke.
	
	// ------ B_Say_Smalltalk (TA_Smalltalk) ------
	VAR	string Smalltalk01;				// ...wenn Du meinst...
	VAR	string Smalltalk02;				// ...kann schon sein...
	VAR	string Smalltalk03;				// ...war nicht besonders schlau....
	VAR	string Smalltalk04;				// ...ich halt mich da lieber raus...
	VAR	string Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	VAR	string Smalltalk06;				// ...war doch klar, da� das �rger gibt...
	VAR	string Smalltalk07;				// ...aber behalt's f�r Dich, mu� nicht gleich jeder wissen...
	VAR	string Smalltalk08;				// ...das passiert mir nicht nochmal...
	VAR	string Smalltalk09;				// ...an der Gechichte mu� wohl doch was dran sein...
	VAR	string Smalltalk10;				// ...man mu� eben aufpassen was man rumerz�hlt...
	VAR	string Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	VAR	string Smalltalk12;				// ...man darf auch nicht alles glauben, was man h�rt...
	VAR	string Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	VAR	string Smalltalk14;				// ...immer wieder die selbe Leier...
	VAR	string Smalltalk15;				// ...manche lernen eben garnichts dazu...
	VAR	string Smalltalk16;				// ...fr�her w�re das ganz anders gelaufen...
	VAR	string Smalltalk17;				// ...gequatscht wird viel...
	VAR	string Smalltalk18;				// ...ich h�r nicht mehr auf das Gefasel...
	VAR	string Smalltalk19;				// ...verla� Dich auf jemanden und Du bist verlassen, das ist eben so...
	VAR	string Smalltalk20;				// ...ich glaube kaum, da� sich daran was �ndern wird...
	VAR	string Smalltalk21;				// ...wahrscheinlich hast Du recht...
	VAR	string Smalltalk22;				// ...erstmal abwarten. Es wird nichts so hei� gegessen, wie es gekocht wird...
	VAR	string Smalltalk23;				// ...ich dachte, das w�re schon lange gekl�rt, aber das ist wohl nicht so...
	VAR	string Smalltalk24;				// ...la� uns lieber �ber was anderes reden...
	//Tough Guy (SLD/MIL/DJG)
	VAR	string Smalltalk25;				// ...der war doch sturzbetrunken...							
	VAR	string Smalltalk26;				// ...mit mir kann man sowas nicht machen...			
	VAR	string Smalltalk27;				// ...alle sind gerannt wie die Hasen, ich war ganz allein...
	//ProInnos (NOV/KDF/PAL)
	VAR	string Smalltalk28;				// ...so steht es in den heiligen Schriften...							
	VAR	string Smalltalk29;				// ...ich handle stets in Innos Namen...			
	VAR	string Smalltalk30;				// ...niemand darf gegen die g�ttliche Ordnung versto�en...
		
	// ------ Lehrer-Kommentare ------
	var string NoLearnNoPoints			;	//NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string NoLearnOverPersonalMAX	;	//NSC-Lehrer verbietet Steigerung �BER sein pers�nliches Lehrer-Maximum
	var string NoLearnYoureBetter		;   //NSC-Lehrer - MAX ist schlechter als oder gleich wie Spieler
	var string YouLearnedSomething		;   //SC hat etwas gelernt

	// ------ B_AssignCityGuide ------
	var string UNTERSTADT		;
	var string OBERSTADT		;
	var string TEMPEL		;
	var string MARKT		;
	var string GALGEN		;
	var string KASERNE		;
	var string HAFEN	;
	// -------------------------------
	var string WHERETO		;
	// -------------------------------
	var string OBERSTADT_2_UNTERSTADT	;
	var string UNTERSTADT_2_OBERSTADT	;
	var string UNTERSTADT_2_TEMPEL		;
	var string UNTERSTADT_2_HAFEN		;
	var string TEMPEL_2_UNTERSTADT		;
	var string TEMPEL_2_MARKT			;
	var string TEMPEL_2_GALGEN			;
	var string MARKT_2_TEMPEL			;
	var string MARKT_2_KASERNE			;
	var string MARKT_2_GALGEN			;
	var string GALGEN_2_TEMPEL			;
	var string GALGEN_2_MARKT			;
	var string GALGEN_2_KASERNE			;
	var string KASERNE_2_MARKT			;
	var string KASERNE_2_GALGEN			;
	var string HAFEN_2_UNTERSTADT		;

	// ------ Kampf ------
	var	string Dead				;			// T�dlich verletzt
	VAR	string Aargh_1			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_2			;			// Treffer kassiert im Kampf	
	VAR	string Aargh_3			;			// Treffer kassiert im Kampf	
	
	var string ADDON_WRONGARMOR;			//Sc hat unangemessene R�stung an				//Default
	var string ADDON_WRONGARMOR_SLD;		//Beide SLD/DJG und falsche R�stung
	var string ADDON_WRONGARMOR_MIL;		//Beide MIL/PAL	und falsche R�stung
	var string ADDON_WRONGARMOR_KDF;		//Beide KDF und falsche R�stung
	var string ADDON_NOARMOR_BDT;			//self ist BAndite und SC hat keine R�stung an.
	
	var string ADDON_DIEBANDIT;				//Stirb du dreckiger Bandit
	var string ADDON_DIRTYPIRATE;			//Piratenpack
	// ------ SC SVMs ------
	var string SC_HeyTurnAround;			//SC: Hey du! (B_AssessTalk)
	var string SC_HeyTurnAround02;	
	var string SC_HeyTurnAround03;	
	var string SC_HeyTurnAround04;			
	var string SC_HeyWaitASecond;			//SC: Hey warte mal! (B_AssessTalk)
	var string DoesntWork;				
	var string PickBroke;				
	var string NeedKey;					
	var string NoMorePicks;	
	var string NoPickLockTalent;
	var string NoSweeping;
	
	var string PICKLOCKORKEYMISSING;	
	var string KEYMISSING;
	var string PICKLOCKMISSING;
	var string NEVEROPEN;
	var string MISSINGITEM;
	var string DONTKNOW;
	var string NOTHINGTOGET;
	var string NOTHINGTOGET02;
	var string NOTHINGTOGET03;
	var string HEALSHRINE;
	var string HEALLASTSHRINE;
	var string IRDORATHTHEREYOUARE;
	var string SCOPENSIRDORATHBOOK;
	var string SCOPENSLASTDOOR;

	//-------------Addon ----------------------
	
	var string TRADE_1;
	var string TRADE_2;
	var string TRADE_3;
	
	var string VERSTEHE;
	var string FOUNDTREASURE;
	var string CANTUNDERSTANDTHIS;
	var string CANTREADTHIS;
	var string STONEPLATE_1;
	var string STONEPLATE_2;
	var string STONEPLATE_3;
	
	var string COUGH;
	var string HUI;
	
	var string Addon_ThisLittleBastard;
	var string ADDON_OPENADANOSTEMPLE;
	
	//Story Banditenlager Dialoge
	var string	ATTENTAT_ADDON_DESCRIPTION;
	var string  ATTENTAT_ADDON_DESCRIPTION2;
	var string	ATTENTAT_ADDON_PRO;
	var string 	ATTENTAT_ADDON_CONTRA;
	
	var string 	MINE_ADDON_DESCRIPTION;
	var string 	ADDON_SUMMONANCIENTGHOST;
	var string 	ADDON_ANCIENTGHOST_NOTNEAR;
	
	var string 	ADDON_GOLD_DESCRIPTION; 	
};     


// **********************************
// NSCs
// ----
// SVMs m�ssen immer "SVM_x" heissen, 
// wobei x die VoiceNummer ist.	
// **********************************

// ------ wird nur intern gebraucht! ------
instance SVM_0 (C_SVM)				
{

};

instance SVM_1 (C_SVM)
{
	
};

INSTANCE SVM_2	(C_SVM)	
{
	//leer
};

instance SVM_3 (C_SVM)
{
	
};

instance SVM_4 (C_SVM)
{
	
};

instance SVM_5 (C_SVM)
{
	
};


instance SVM_6 (C_SVM)
{
	
};

instance SVM_7 (C_SVM)
{
	
};

instance SVM_8 (C_SVM)
{
	
};

instance SVM_9 (C_SVM)
{
	
};

instance SVM_10 (C_SVM)
{
	
};

instance SVM_11 (C_SVM)
{
};

instance SVM_12 (C_SVM)
{
	
};

instance SVM_13 (C_SVM)
{
	
};


instance SVM_14 (C_SVM)
{
	
};

// ****************
// 		SPIELER
// ****************

INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	
};

// ***************
// 		Frauen
// ***************

instance SVM_16 (C_SVM)
{
	
};

instance SVM_17 (C_SVM)
{

};


// *************
// 		Orks
// *************

INSTANCE SVM_18	(C_SVM)							
{

};

// ****************
// 	   Dementor
// ****************

INSTANCE SVM_19	(C_SVM)
{

};
 

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	20;




