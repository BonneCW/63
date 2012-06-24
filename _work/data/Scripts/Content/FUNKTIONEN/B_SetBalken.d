FUNC VOID B_SetZeichenUndPos (var int ptr, var string zeichen, var int posx, var int posy)
{
	if (!ptr) { return; };

	var zCViewText line; line = Print_GetText(ptr);
	Print_GetScreenSize();
	line.text = zeichen;
	line.posx = (posx<<13)/Print_Screen[0];
	line.posy = (posy<<13)/Print_Screen[1];
};

FUNC VOID B_SetBalken (var int balkenArray, var int prozent, var int posx, var int posy, var string font, var int type)
{
	if (MEM_ReadInt(balkenArray) == 0)
	{
		var int ptr;

		var int i; i = 0;
		var int loop; loop = MEM_StackPos.position;

		if (i < 22)
		{
			ptr = Print_ExtPxl(1, 1, "k", font, 0, -1);

			MEM_WriteInt(balkenArray+i*4, ptr);

			i += 1;

			MEM_StackPos.position = loop;
		};
	};

	var int posArray[22];

	i = 0;

	loop = MEM_StackPos.position;

	if (i < 22)
	{
		if (type == 0)
		{
			MEM_WriteStatArr(posArray, i, posx+10*i);
		}
		else
		{
			MEM_WriteStatArr(posArray, 21-i, Print_Screen[PS_X]-(posx+10*i));
		};

		i += 1;

		MEM_StackPos.position = loop;
	};

	if (prozent <= 1)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), "i", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), "i", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), "i", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), "i", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), "i", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 5)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), "i", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), "i", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), "i", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), "i", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 10)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), "i", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), "i", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), "i", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 15)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), "i", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), "i", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 20)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), "i", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 25)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), "i", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 30)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), "i", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 35)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), "i", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 40)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), "i", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 45)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), "i", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 50)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), "i", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 55)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), "i", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 60)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), "i", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 65)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), "i", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 70)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), "i", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 75)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), "i", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 80)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), ".", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), "i", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 85)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), ".", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), ".", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), "i", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 90)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), ".", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), ".", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), ".", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), "i", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else if (prozent <= 95)
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), ".", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), ".", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), ".", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), ".", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), "i", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	}
	else
	{
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray), "l", MEM_ReadStatArr(posArray, 0), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+4), ".", MEM_ReadStatArr(posArray, 1), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+8), ".", MEM_ReadStatArr(posArray, 2), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+12), ".", MEM_ReadStatArr(posArray, 3), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+16), ".", MEM_ReadStatArr(posArray, 4), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+20), ".", MEM_ReadStatArr(posArray, 5), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+24), ".", MEM_ReadStatArr(posArray, 6), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+28), ".", MEM_ReadStatArr(posArray, 7), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+32), ".", MEM_ReadStatArr(posArray, 8), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+36), ".", MEM_ReadStatArr(posArray, 9), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+40), ".", MEM_ReadStatArr(posArray, 10), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+44), ".", MEM_ReadStatArr(posArray, 11), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+48), ".", MEM_ReadStatArr(posArray, 12), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+52), ".", MEM_ReadStatArr(posArray, 13), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+56), ".", MEM_ReadStatArr(posArray, 14), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+60), ".", MEM_ReadStatArr(posArray, 15), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+64), ".", MEM_ReadStatArr(posArray, 16), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+68), ".", MEM_ReadStatArr(posArray, 17), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+72), ".", MEM_ReadStatArr(posArray, 18), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+76), ".", MEM_ReadStatArr(posArray, 19), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+80), ".", MEM_ReadStatArr(posArray, 20), posy);
		B_SetZeichenUndPos (MEM_ReadInt(balkenArray+84), "n", MEM_ReadStatArr(posArray, 21), posy);
	};
};