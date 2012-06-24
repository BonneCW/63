// *********************************************************************
// game options menu - extensions
// *********************************************************************


INSTANCE MENU_OPT_63(C_MENU_DEF)
{
	backpic			= MENU_BACK_PIC;
	
	items[0]		= "MENUITEM_63_HEADLINE";
				
	items[9]		= "MENUITEM_63_ONLINE";	
	items[10]		= "MENUITEM_63_ONLINE_CHOICE";
	
	items[17]		= "MENUITEM_63_BACK";	
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_63_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		=	"SPEZIELL";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=	0;		posy		=	MENU_TITLE_Y-500;
	dimx		=	8100;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Online-Modus
//

INSTANCE MENUITEM_63_ONLINE (C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Online-Modus";
	text[1]		= 	"Aktiviert Online-Features (aktiviert/deaktiviert)"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*-1;
	dimx		=	3000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

instance MENUITEM_63_ONLINE_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"aktiviert|deaktiviert";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*-1 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption		= "online";
	onChgSetOptionSection 	= "METZEL";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};



INSTANCE MENUITEM_63_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Zurück";
	// Position und Dimension	
	posx		=	1000;		posy		=	MENU_BACK_Y+500;
	dimx		=	6192;		dimy		=	MENU_DY;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};

