// ************************************
// B_ReadySpell
// ------------
// FIX für 2 Probleme von AI_ReadySpell
// ************************************

func void B_ReadySpell_Hero (var int spell, var int cost)
{
	AI_ReadySpell (hero, spell, cost);

	AI_RemoveWeapon	(hero);
};
