// ***************************************************
// B_TeachFightTalentPercent
// -------------------------
// Kosten abh�ngig von "verwandtem" Waffentalent-Level
// ***************************************************

// -------------------------------
func int B_TeachFightTalentPercent (var C_NPC slf, var C_NPC oth, var int talent, var int percent, var int teacherMAX)
{
	var string concatText;
	
	// ------ Kostenberechnung ------
	var int kosten; 
	kosten = (B_GetLearnCostTalent(oth, talent, 1) * percent);
	
	//EXIT IF...
	
	// ------ falscher Parameter ------
	if (talent!=NPC_TALENT_1H) && (talent!=NPC_TALENT_2H) && (talent!=NPC_TALENT_BOW) && (talent!=NPC_TALENT_CROSSBOW)
	{
		Print ("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};
	
	// ------ Lernen NICHT �ber teacherMax ------
	var int realHitChance;
	if 		(talent == NPC_TALENT_1H)		{	realHitChance = oth.HitChance[NPC_TALENT_1H];		}	// Umwandeln von const-Parameter in VAR f�r folgende If-Abfrage
	else if (talent == NPC_TALENT_2H)		{	realHitChance = oth.HitChance[NPC_TALENT_2H];		}
	else if (talent == NPC_TALENT_BOW)		{	realHitChance = oth.HitChance[NPC_TALENT_BOW];		}
	else if (talent == NPC_TALENT_CROSSBOW) {	realHitChance = oth.HitChance[NPC_TALENT_CROSSBOW];	};
	
	if (realHitChance >= teacherMAX)
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
		B_Say (slf, oth, "$NOLEARNYOUREBETTER");
		
		return FALSE;
	};
	
	if ((realHitChance + percent) > teacherMAX)
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	("Maximum erreicht!", -1, -1, FONT_SCREEN, 2);
		B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
	
		return FALSE;
	};
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		Print ("Nicht genug Punkte!");
		
		return FALSE;
	};

		
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	oth.lp = oth.lp - kosten;
	
	// ------ 1H steigern ------
	if (talent == NPC_TALENT_1H)			
	{	
		B_RaiseFightTalent (oth, NPC_TALENT_1H, percent);	//Einhand steigern
		
		PrintScreen	(PRINT_Learn1H, -1, -1, FONT_Screen, 2);
		
		return TRUE;
	};
	
	// ------ 2H steigern ------
	if (talent == NPC_TALENT_2H)			
	{	
		B_RaiseFightTalent (oth, NPC_TALENT_2H, percent);	//Zweihand steigern

		PrintScreen	(PRINT_Learn2H, -1, -1, FONT_Screen, 2);
		
		return TRUE;
	};
		
	// ------ Bogen steigern ------	
	if (talent == NPC_TALENT_BOW)			
	{	
		B_RaiseFightTalent (oth, NPC_TALENT_BOW, percent);	//Bogen steigern
		
		PrintScreen	(PRINT_LearnBow, -1, -1, FONT_Screen, 2);
		
		return TRUE;
	};
	
	// ------ Crossbow steigern ------
	if (talent == NPC_TALENT_CROSSBOW)			
	{	
		B_RaiseFightTalent (oth, NPC_TALENT_CROSSBOW, percent);	//Crossbow steigern
		
		PrintScreen	(PRINT_LearnCrossbow, -1, -1, FONT_Screen, 2);
		
		return TRUE;
	};
};
		
		








