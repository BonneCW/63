// ***********************************************************************************
// 										DAYCYCLE
// ***********************************************************************************

func void ZS_MM_AllScheduler()
{
	self.aivar[AIV_MM_PRIORITY] = PRIO_EAT;
	

	self.senses		= 	SENSE_HEAR | SENSE_SEE;
	self.senses_range	= 	PERC_DIST_ORC_ACTIVE_MAX;

	//ADDON>
	if (self.guild == GIL_STONEGUARDIAN)
	&& (RavenIsDead == TRUE)
	{	
		B_KillNpc (self);
	};
	//ADDON<

	if (self.level < WaveCounter-1)
	&& (self.guild != GIL_SUMMONED_WOLF)
	&& (self.guild != GIL_SUMMONED_GOBBO_SKELETON)
	&& (self.guild != GIL_SUMMONED_SKELETON)
	&& (self.guild != GIL_SUMMONED_GOLEM)
	&& (self.guild != GIL_SUMMONED_DEMON)
	&& (self.guild != GIL_SUMMONEDZOMBIE)
	&& (self.guild != GIL_SUMMONEDGUARDIAN)
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -999999);
	};
		
	if (Wld_IsTime	(self.aivar[AIV_MM_SleepStart],00,self.aivar[AIV_MM_SleepEnd],00) || (self.aivar[AIV_MM_SleepStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_Sleep, 1, "");
	}
	else if (Wld_IsTime	(self.aivar[AIV_MM_RestStart],00,self.aivar[AIV_MM_RestEnd],00) || (self.aivar[AIV_MM_RestStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_Rest, 1, "");
	}
	else if (Wld_IsTime	(self.aivar[AIV_MM_RoamStart],00,self.aivar[AIV_MM_RoamEnd],00) || (self.aivar[AIV_MM_RoamStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_Roam, 1, "");
	}
	else if (Wld_IsTime	(self.aivar[AIV_MM_EatGroundStart],00,self.aivar[AIV_MM_EatGroundEnd],00) || (self.aivar[AIV_MM_EatGroundStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_EatGround, 1, "");
	}
	else if (Wld_IsTime	(self.aivar[AIV_MM_WuselStart],00,self.aivar[AIV_MM_WuselEnd],00) || (self.aivar[AIV_MM_WuselStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_Wusel, 1, "");
	}
	else if (Wld_IsTime	(self.aivar[AIV_MM_OrcSitStart],00,self.aivar[AIV_MM_OrcSitEnd],00) || (self.aivar[AIV_MM_OrcSitStart] == OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_Rtn_OrcSit, 1, "");
	}
	else
	{
		AI_StartState (self, ZS_MM_Rtn_Rest, 1, ""); //Default = Rest
	};
};
