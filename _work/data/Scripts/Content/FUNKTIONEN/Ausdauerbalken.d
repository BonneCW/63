FUNC VOID Ausdauerbalken()
{
	var int l_menge;

	if (Sprint_Ausdauer_MAX > 0)
	{
		l_menge = (Sprint_Ausdauer * 100)/(Sprint_Ausdauer_MAX);
	};

	if (l_menge <= 1)
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= 5)
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*2))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*3))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*4))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*5))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*6))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*7))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*8))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*9))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*10))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*11))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*12))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*13))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*14))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*15))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*16))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*17))
	{	
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*18))
	{	
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*19))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("i", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else if (l_menge <= (5*20))
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	}
	else
	{
		PrintScreen	("l", 1, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 2, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 3, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 4, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 5, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 6, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 7, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 8, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 9, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 10, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 11, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 12, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 13, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 14, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 15, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 16, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 17, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 18, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 19, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 20, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	(".", 21, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
		PrintScreen	("n", 22, 10, FONT_Ausdauer, (1+anzeigebeschleuniger+Slowmotionbonus));
	};
};