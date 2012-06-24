// ************** 
// ZS_MM_Rtn_Roam
// **************

func void ZS_MM_Rtn_Roam()
{
	Perception_Set_Monster_Rtn();

	self.senses		= 	SENSE_HEAR | SENSE_SEE;
	self.senses_range	= 	PERC_DIST_ORC_ACTIVE_MAX;

	AI_SetWalkmode 	(self, NPC_WALK);
	B_MM_DeSynchronize();
	if (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)==FALSE)  //damit die Monster beim Inserten nicht immer erst zum WP rennen, sondern nur, wenn sie der Heimat zu fern sind
	{
		AI_GotoWP (self, self.WP);
	};	
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_MM_Rtn_Roam_loop()
{
	if ((!Wld_IsTime (self.aivar[AIV_MM_RoamStart],00,self.aivar[AIV_MM_RoamEnd],00)) && (self.aivar[AIV_MM_RoamStart] != OnlyRoutine))
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
	
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		var int wanderTime;
		wanderTime = Hlp_Random(5);
		Npc_SetStateTime (self, 0);
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	if (Npc_GetStateTime(self) > wanderTime)
	{
		if (Wld_IsNextFPAvailable(self,	"FP"))	//NEXT, sonst findet er seinen eigenen FP = besetzt!
		{											
			AI_GotoNextFP	(self,	"FP");
		};
		//sonst stehenbleiben
		
		self.aivar[AIV_TAPOSITION] = NOTINPOS;
	}
	else
	{
		if (Hlp_Random(1000) <= 5)
		{
			var int randomMove;
			randomMove = Hlp_Random(3);
			if (randomMove == 0) {AI_PlayAni(self, "R_ROAM1");};
			if (randomMove == 1) {AI_PlayAni(self, "R_ROAM2");};
			if (randomMove == 2) {AI_PlayAni(self, "R_ROAM3");};
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Roam_end()
{

};
