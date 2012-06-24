FUNC VOID EXPBalken()
{

	var int l_menge;

	if (hero.level > 0)
	{
		//EXP_LastLevel = hero.exp_next +((hero.level)*500);
	}
	else
	{
		EXP_LastLevel = 0;
	};

	l_menge = (((hero.exp - EXP_LastLevel) * 100)/(hero.exp_next - EXP_LastLevel));

	B_SetBalken(MEM_GetIntAddress(expbalkenArray), l_menge, 10, 10, FONT_EXP, 0);

	return;
};