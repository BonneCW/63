// **********************
// B_TeachAttributePoints
// ----------------------
// Kosten abh. v. Gilde
// **********************

// ----------------------------
func int B_TeachAttributePoints (var C_NPC slf, var C_NPC oth, var int attrib, var int points, var int teacherMAX)
{
	var string concatText;

	// ------ Kostenberechnung ------
	var int kosten; 
	
	if (attrib != ATR_HITPOINTS_MAX)
	{
		kosten = (B_GetLearnCostAttribute (oth, attrib) * points);
	}
	else
	{
		kosten = 5;
	};
	
	
	//EXIT IF...
	
	// ------ falscher Parameter ------
	if (attrib!=ATR_STRENGTH) && (attrib!=ATR_DEXTERITY) && (attrib!=ATR_MANA_MAX) && (attrib != ATR_HITPOINTS_MAX)
	{
		Print ("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};
	
	// ------ Lernen NICHT über teacherMax ------
	var int realAttribute;
	if 		(attrib == ATR_STRENGTH)	{	realAttribute = oth.attribute[ATR_STRENGTH];	}	// Umwandeln von const-Parameter in VAR für folgende If-Abfrage
	else if (attrib == ATR_DEXTERITY)	{	realAttribute = oth.attribute[ATR_DEXTERITY];	}
	else if (attrib == ATR_HITPOINTS_MAX)	{	realAttribute = oth.attribute[ATR_HITPOINTS_MAX];	}
	else if (attrib == ATR_MANA_MAX)	{	realAttribute = oth.attribute[ATR_MANA_MAX];	};
	
	if (realAttribute >= teacherMAX)				//Wenn der Spieler schon das teacherMAX erreicht oder überschritten hat
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	("Maximum erreicht!", -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNYOUREBETTER");
	
		return FALSE;
	};
	
	if ((realAttribute + points) > teacherMAX)
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	("Lernen über Maximum nicht möglich!", -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
	
		return FALSE;
	};
		
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		Print	("Nicht genug Punkte!");
		
		return FALSE;
	};
		
		
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	oth.lp = oth.lp - 5;
		
	B_RaiseAttribute (oth, attrib, points);
	
	return TRUE;
};
