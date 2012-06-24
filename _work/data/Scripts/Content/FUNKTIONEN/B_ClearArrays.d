FUNC VOID B_ClearArrays()
{
	var int i; i = 0;
	var int ptr; ptr = MEM_StackPos.position;

	if (i < 22)
	{
		MEM_WriteStatArr(expbalkenArray, i, 0);
		MEM_WriteStatArr(slowmotionArray, i, 0);

		i += 1;

		MEM_StackPos.position = ptr;
	};
};