FUNC VOID B_SetSchwierigkeit(var C_NPC self)
{
	if ((self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit))
	&& ((self.guild != GIL_SHEEP)
	&& (self.guild != GIL_MEATBuG))
	{
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		};

		if (self.aivar[AIV_Schwierigkeitsgrad] == 1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 8;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 8;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 8;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 8;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 8;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 8;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] * 8;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] * 8;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] * 8;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] * 8;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] * 8;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] * 8;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] * 8;
			};
	
			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 2)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 4;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 4;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 4;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 4;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 4;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 4;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] * 4;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] * 4;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] * 4;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] * 4;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] * 4;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] * 4;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] * 4;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 3)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 2;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 2;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};
	
			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 2;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 2;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 2;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 2;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] * 2;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] * 2;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] * 2;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] * 2;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] * 2;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] * 2;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] * 2;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 4)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS]* 3 / 2;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX]* 3 / 2;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 3 / 2;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 3 / 2;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 3 / 2;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 3 / 2;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] * 3 / 2;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] * 3 / 2;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] * 3 / 2;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] * 3 / 2;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] * 3 / 2;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] * 3 / 2;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] * 3 / 2;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 5)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS];
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX];

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH];
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY];
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA];
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX];
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE];
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT];
				self.protection[PROT_POINT] = self.protection[PROT_POINT];
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE];
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC];
				self.protection[PROT_FLY] = self.protection[PROT_FLY];
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE];
			};
	
			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		};

		if (Mod_Schwierigkeit	==	1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] / 8;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] / 8;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 5;
				self.attribute[ATR_HITPOINTS] = 5;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] / 8;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] / 8;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] / 8;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] / 8;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 8;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 8;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] / 8;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 8;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 8;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] / 8;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] / 8;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 1;
		}
		else if (Mod_Schwierigkeit	==	2)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] / 4;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] / 4;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] / 4;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] / 4;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] / 4;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] / 4;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 4;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 4;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] / 4;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 4;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 4;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] / 4;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] / 4;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 2;
		}
		else if (Mod_Schwierigkeit	==	3)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] / 2;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] / 2;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] / 2;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] / 2;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] / 2;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] / 2;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] / 2;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] / 2;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] / 2;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] / 2;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] / 2;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] / 2;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] / 2;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 3;
		}
		else if (Mod_Schwierigkeit	==	4)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 2 / 3;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 2 / 3;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 2 / 3;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 2 / 3;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 2 / 3;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 2 / 3;
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE] * 2 / 3;
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT] * 2 / 3;
				self.protection[PROT_POINT] = self.protection[PROT_POINT] * 2 / 3;
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE] * 2 / 3;
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC] * 2 / 3;
				self.protection[PROT_FLY] = self.protection[PROT_FLY] * 2 / 3;
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE] * 2 / 3;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 4;
		}
		else if (Mod_Schwierigkeit	==	5)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS];
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX];

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 50;
				self.attribute[ATR_HITPOINTS] = 50;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH];
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY];
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA];
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX];
				self.protection[PROT_EDGE] = self.protection[PROT_EDGE];
				self.protection[PROT_BLUNT] = self.protection[PROT_BLUNT];
				self.protection[PROT_POINT] = self.protection[PROT_POINT];
				self.protection[PROT_FIRE] = self.protection[PROT_FIRE];
				self.protection[PROT_MAGIC] = self.protection[PROT_MAGIC];
				self.protection[PROT_FLY] = self.protection[PROT_FLY];
			};

			if (self.guild == GIL_DRAGON)
			{
				self.damage[DAM_INDEX_FIRE] = self.damage[DAM_INDEX_FIRE];
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 5;
		};
	};
};