//////////////////////////////////////////////////////////////////////////
//	B_MagicHurtNpc
//	==============
//	Verwundet den NSC und berücksichtigt dabei den magischen Rüstschutz
//	'self' ist der Täter, other der zu verwundende NSC
//////////////////////////////////////////////////////////////////////////
func void B_MagicHurtNpc (var C_NPC slf, var C_NPC oth, var int damage)
{
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, -damage);
	
	// ------ XP HIER vergeben (ZS_Dead kennt den other nicht mehr) ------
	if (Npc_IsDead(oth))
	{
		if ((Npc_IsPlayer(other))
		|| (other.aivar[AIV_PARTYMEMBER] == TRUE))
		&& (self.aivar[AIV_VictoryXPGiven] == FALSE)							
		{
			B_GivePlayerXP (self.level * XP_PER_VICTORY);			
		
			self.aivar[AIV_VictoryXPGiven] = TRUE;

			if (Parasit_Perk == TRUE)
			{
				Npc_ChangeAttribute(hero, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]/10));
				Npc_ChangeAttribute(hero, ATR_MANA, ((hero.attribute[ATR_MANA_MAX]*15)/100));
			};
		};
	};
};
