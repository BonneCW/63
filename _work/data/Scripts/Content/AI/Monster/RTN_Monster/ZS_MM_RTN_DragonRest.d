// ****************************** REST ********************************

func void ZS_MM_Rtn_DragonRest()  
{
	Npc_SetPercTime	(self,	1);
	self.aivar[AIV_MM_PRIORITY] = PRIO_EAT;
	

	///////////
	//Joly:		Dragon talk Testmodell
	//////////
	
	Npc_PercEnable	(self, 	PERC_ASSESSTALK			,	B_AssessTalk);
	
	AI_SetWalkmode 	(self, NPC_WALK);
	B_MM_DeSynchronize();
	if (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)==FALSE) //damit die Monster beim Inserten nicht immer erst zum WP rennen, sondern nur, wenn sie der Heimat zu fern sind
	{
		AI_GotoWP (self, self.WP);
	};
		
	if (Wld_IsFPAvailable(self,	"FP_ROAM"))	
	{
		AI_GotoFP (self, "FP_ROAM");
	}
	else
	{
		AI_AlignToWP(self);
	};
	
	self.aivar[AIV_TAPOSITION] = 0; //f�r Regeneration;
};

func int ZS_MM_Rtn_DragonRest_Loop ()
{
	if ((!Wld_IsTime	(self.aivar[AIV_MM_RestStart],00,self.aivar[AIV_MM_RestEnd],00)) && (self.aivar[AIV_MM_RestStart] != OnlyRoutine))
	{
		AI_StartState (self, ZS_MM_AllScheduler, 1, "");
		return LOOP_END;
	};

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
	
	if (Hlp_Random(1000) <= 5)
	{
		var int randomMove;
		randomMove = Hlp_Random(3);
		AI_StandUp (self);
		if (randomMove == 0) {AI_PlayAni(self, "R_ROAM1");};
		if (randomMove == 1) {AI_PlayAni(self, "R_ROAM2");};
		if (randomMove == 2) {AI_PlayAni(self, "R_ROAM3");};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_DragonRest_End ()
{
	AI_PlayAni			(self,	"T_REST_2_STAND");
};
