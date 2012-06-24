FUNC VOID SlowMotion()
{
	B_SetBalken(MEM_GetIntAddress(slowmotionArray), (slowmotiontime*100)/slowmotiontime_max, 20, 10, FONT_SLOWM, 1);

	return;
};