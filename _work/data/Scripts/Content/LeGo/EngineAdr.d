/***********************************\
       ADRESSEN DER ENGINECALLS
\***********************************/

const int CGameManager__Read_Savegame             = 4366438; //0x42A066
const int oCGame__Render                          = 7112352; //0x6C86A0 Hook: FrameFunctions
const int oCGame__UpdateStatus                    = 7093113; //0x6C3B79 Hook: Focusnames
const int oCNpc__DropUnconscious                  = 7560880; //0x735EB0 Hook: Shields
const int oCNpc__EquipItem                        = 7545792; //0x7323C0 Hook: Shields
const int oCNpc__EV_DrawWeapon                    = 7654416; //0x74CC10 Hook: Shields
const int oCNpc__EV_DrawWeapon1                   = 7656160; //0x74D2E0 Hook: Shields
const int oCNpc__EV_PlayAni                       = 7699121; //0x757AB1 Hook: AI_Function
const int oCNpc__EV_RemoveWeapon                  = 7658272; //0x74DB20 Hook: Shields
const int oCNpc__EV_RemoveWeapon1                 = 7660720; //0x74E4B0 Hook: Shields
const int oCNpc__PutInSlot                        = 7642288; //0x749CB0
const int oCNpc__RemoveFromSlot                   = 7643760; //0x74A270
const int oCNpc__UnequipItem                      = 7546560; //0x7326C0 Hook: Shields
const int oCSavegameManager__SetAndWriteSavegame  = 4428037; //0x439105 Hook: Saves
const int zCAICamera_StartDialogCam               = 4923632; //0x4B20F0
const int zCParser__CreateInstance                = 7942048; //0x792FA0
const int zCParser__CreatePrototype               = 7942288; //0x793090
const int zCView__Close                           = 8023600; //0x7A6E30
const int zCView__InsertBack                      = 8020272; //0x7A6130
const int zCView__Open                            = 8023040; //0x7A6C00
const int zCView__SetFontColor                    = 8034576; //0x7A9910
const int zCView__zCView                          = 8017664; //0x7A5700
const int zCView__@zCView                         = 8017856; //0x7A57C0
const int zParser__CallFunc                       = 7940592; //0x7929F0

// Globale Flagvariable (manche Pakete wollen wissen ob sie erwünscht sind...)
const int _LeGo_Flags = 0;
