/*===================================================================
ShowBars
setzt die Bars an ihre gewohnte Position
HideBars
schiebt die Bars aus dem Bildschirm

Nach jedem Aufruf des Menüs ([Esc]) und Ähnlichem sind die Bars wieder
an ihrer alten Position, deshalb sollten die Funktion oft aufgerufen
werden, zum Beispiel in jedem Frame
==================================================================*/

func void ShowBars ()
{
	// ----- ursprüngliche Positionen -----
	const int hp_vposx = 80;
	const int hp_vposy = 7872;
	
	const int mana_vposx = 80;
	const int mana_vposy = 7572;
	
	const int swim_vposx = 80;
	const int swim_vposy = 7272;
	
	var int focus_vposx;
	var int focus_vposy;

	focus_vposx = 3376;
	focus_vposy = 107;

	// ----- an die Bars rankommen -----
	MEM_InitGlobalInst ();
	var oCViewStatusBar bar_hp; bar_hp = MEM_PtrToInst (MEM_GAME.hpBar);
	var oCViewStatusBar bar_mana; bar_mana = MEM_PtrToInst (MEM_GAME.manaBar);
	var oCViewStatusBar bar_swim; bar_swim = MEM_PtrToInst (MEM_GAME.swimBar);
	var oCViewStatusBar bar_focus; bar_focus = MEM_PtrToInst (MEM_GAME.focusBar);

	// ----- Bars an die alte Position -----
	bar_hp.zCView_vposx = hp_vposx;
	bar_hp.zCView_vposy = hp_vposy;
	
	bar_mana.zCView_vposx = mana_vposx;
	bar_mana.zCView_vposy = mana_vposy;

	bar_swim.zCView_vposx = swim_vposx;
	bar_swim.zCView_vposy = swim_vposy;
	
	bar_focus.zCView_vposx = focus_vposx;
	bar_focus.zCView_vposy = focus_vposy;
};

func void HideBars ()
{
	// ----- an die Bars rankommen -----
	MEM_InitGlobalInst ();
	var oCViewStatusBar bar_hp; bar_hp = MEM_PtrToInst (MEM_GAME.hpBar);
	var oCViewStatusBar bar_mana; bar_mana = MEM_PtrToInst (MEM_GAME.manaBar);
	var oCViewStatusBar bar_swim; bar_swim = MEM_PtrToInst (MEM_GAME.swimBar);
	var oCViewStatusBar bar_focus; bar_focus = MEM_PtrToInst (MEM_GAME.focusBar);

	// ----- Bars aus dem sichtbaren Bereich schieben -----
	bar_hp.zCView_vposx = 8200;
	bar_hp.zCView_vposy = 8200;
	
	bar_mana.zCView_vposx = 8200;
	bar_mana.zCView_vposy = 8200;
	
	bar_swim.zCView_vposx = 8200;
	bar_swim.zCView_vposy = 8200;
	
	bar_focus.zCView_vposx = 8200;
	bar_focus.zCView_vposy = 8200;
};