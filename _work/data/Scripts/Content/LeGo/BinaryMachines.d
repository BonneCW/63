/***********************************\
           BINARYMACHINES
\***********************************/

/* Abhängigkeiten:
 *  IKARUS
 *
 * Info:
 *  Dieses Paket erlaubt es beliebig im Dateisystem eigene Dateien anzulegen
 *  und zu beschreiben.
 *
 * Inhalt:
 *  int    BW_NewFile  (string file)
 *  void   BW_Close    ()
 *  void   BW          (int data, int length)
 *  void   BW_Int      (int data)
 *  void   BW_Char     (string data)
 *  void   BW_String   (string data)
 *  void   BW_Byte     (int data)
 *  void   BW_Bytes    (int dataPtr, int length)
 *  void   BW_TextLine (string data)
 *  void   BW_Text     (string data)
 *  void   BW_NextLine ()
 *  int    BR_OpenFile (string file)
 *  void   BR_Close    ()
 *  int    BR          (int length)
 *  int    BR_Int      ()
 *  string BR_Char     ()
 *  string BR_String   ()
 *  int    BR_Byte     ()
 *  int    BR_Bytes    (int length)
 *  string BR_TextLine ()
 *  string BR_Text     (int length)
 *
 * Dieses Script war bereits im Forum zu finden: http://forum.worldofplayers.de/forum/showpost.php?p=16198713
 * Dort lassen sich genauere Informationen zu den einzelnen Funktionen entnehmen.
 *
 * Die BinaryMachines müssen nicht initialisiert werden
 */

/*--------------------
  Enginecalls
--------------------*/
const int CREATE_ALWAYS = 2;
const int OPEN_EXISTING = 3;
const int GENERIC_ALL = 1073741824;
const int GENERIC_READ = -2147483648;
const int FILE_SHARE_READ = 1;
const int FILE_SHARE_WRITE = 2;
const int FILE_SHARE_DELETE = 4;
const int FILE_ATTRIBUTE_NORMAL = 128;

func int WIN_GetLastError() {
	const int GetLastError = 8079394; //0x7B4822
	CALL__stdcall(GetLastError);
	return CALL_RetValAsInt();
};

func int WIN_CreateFile(
    var string lpFileName,
    var int dwDesiredAccess,
    var int dwShareMode,
    var int lpSecurityAttributes,
    var int dwCreationDisposition,
    var int dwFlagsAndAttributes,
    var int hTemplateFile) {
    const int CreateFileA = 8079286; //0x7B47B6
    CALL_IntParam(hTemplateFile);
    CALL_IntParam(dwFlagsAndAttributes);
    CALL_IntParam(dwCreationDisposition);
    CALL_IntParam(lpSecurityAttributes);
    CALL_IntParam(dwShareMode);
    CALL_IntParam(dwDesiredAccess);
    CALL_cStringPtrParam(lpFileName);
    CALL__stdcall(CreateFileA);
    return CALL_RetValAsPtr();
};
func void WIN_WriteFile(
    var int hFile,
    var int lpBuffer,
    var int nNumberOfBytesToWrite,
    var int lpNumberOfBytesWritten,
    var int lpOverlapped) {
    const int WriteFile = 8079292; //0x7B47BC
    CALL_IntParam(lpOverlapped);
    CALL_IntParam(lpNumberOfBytesWritten);
    CALL_IntParam(nNumberOfBytesToWrite);
    CALL_IntParam(lpBuffer);
    CALL_IntParam(hFile);
    CALL__stdcall(WriteFile);
};
func void WIN_ReadFile(
    var int hFile,
    var int lpBuffer,
    var int nNumberOfBytesToRead,
    var int lpNumberOfBytesRead,
    var int lpOverlapped) {
    const int ReadFile = 8272388; //0x7E3A04
    CALL_IntParam(lpOverlapped);
    CALL_IntParam(lpNumberOfBytesRead);
    CALL_IntParam(nNumberOfBytesToRead);
    CALL_IntParam(lpBuffer);
    CALL_IntParam(hFile);
    CALL__stdcall(ReadFile);
};
func void WIN_CloseHandle(
    var int hObject) {
    const int CloseHandle = 8079190; //0x7B4756
    CALL_IntParam(hObject);
    CALL__stdcall(CloseHandle);
};
func int WIN_GetFileSize(
    var int hFile,
    var int lpFileSizeHigh) {
    const int GetFileSize = 8079310; //0x7B47CE
    CALL_IntParam(lpFileSizeHigh);
    CALL_IntParam(hFile);
    CALL__stdcall(GetFileSize);
    return CALL_RetValAsInt();
};

/*--------------------
  Konstanten
--------------------*/
const int _BIN_BufferLength = 1024;

/*--------------------
  Variablen
--------------------*/
var int _bin_open; // Handle des Streams
var int _bin_mode; // Mode (Write/Read)
var int _bin_ccnt; // Aktueller Content
var int _bin_crsr; // Cursor
var int _bin_clen; // Aktuelle Streamlänge
var string _bin_prefix; // Debug-Präfix

/*--------------------
  Hilfsfunktionen
--------------------*/
func void _BIN_Err(var string msg) {
    var int r;
	r = MEM_MessageBox(msg, _bin_prefix, MB_OK | MB_ICONERROR);
};
func int _BIN_nRunning() {
    if(_bin_open) {
        _BIN_Err("Der aktuelle Stream muss zuerst geschlossen werden bevor ein weiterer geöffnet werden kann.");
        return 0;
    };
    return 1;
};
func int _BIN_Running() {
    if(!_bin_open) {
        _BIN_Err("Es ist kein Stream aktiv.");
        return 0;
    };
    return 1;
};
func int _BIN_nMode(var int m) {
    if(_bin_mode != m) {
        _BIN_Err("Falscher Modus.");
        return 0;
    };
    return 1;
};
func void _BIN_StreamLen(var int nlen) {
    nlen += _bin_crsr;
    if(nlen >= _bin_clen) {
        var int len; len = _bin_clen;
        var int pos; pos = MEM_StackPos.position;
        if(nlen >= len) {
            len = len<<1;
            pos = MEM_StackPos.position;
        };
        _bin_ccnt = MEM_Realloc(_bin_ccnt, _bin_clen, len);
        _bin_clen = len;
    };
};
func int _BIN_EOF(var int len) {
    if(_bin_crsr + len > _bin_clen) {
        _BIN_Err("Das Ende des Streams wurde bereits erreicht.");
        return 1;
    };
    return 0;
};

/*============
  BinaryWriter
  ============*/

func int BW_NewFile(var string file) {
    _bin_prefix = "BW_NewFile";
    if(!_BIN_nRunning()) { return 0; };

    _bin_open = WIN_CreateFile(file, GENERIC_ALL, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
    if(_bin_open==-1) {
        _bin_open = 0;
		var string err; err = ConcatStrings(file, " - Datei konnte nicht erstellt werden. Fehlercode ");
        _BIN_Err(ConcatStrings(err, IntToString(WIN_GetLastError())));
        return 0;
    };

    _bin_clen = _BIN_BufferLength;
    _bin_mode = 0;
    _bin_crsr = 0;
    _bin_ccnt = MEM_Alloc(_bin_clen);
    return 1;
};

func void BW(var int data, var int length) {
    _bin_prefix = "BW";
    if(!_BIN_Running()||!_BIN_nMode(0)) { return; };

    if(length < 1) { length = 1; };
    if(length > 4) { length = 4; };

    _BIN_StreamLen(4);
    MEM_WriteInt(_bin_ccnt + _bin_crsr, data);
    _bin_crsr += length;
};
func void BW_Int(var int data) { BW(data, 4); };
func void BW_Byte(var int data) { BW(data, 1); };
func void BW_Char(var string data) { BW(Str_GetCharAt(data, 0), 1); };

func void BW_String(var string data) {
    _bin_prefix = "BW_String";
    if(!_BIN_Running()||!_BIN_nMode(0)) { return; };

    var zString zdata; zdata = MEM_PtrToInst(STRINT_GetStringAddress(data));
    var int len; len = zdata.len;
    if(!zdata.len) {
        BW(0, 1);
        return;
    };
    _BIN_StreamLen(len+4);
    MEM_CopyBytes(zdata.ptr, _bin_ccnt + _bin_crsr, len);
    _bin_crsr += len;
    BW(0, 1);
};

func void BW_Bytes(var int dataPtr, var int length) {
    _bin_prefix = "BW_Struct";
    if(!_BIN_Running()||!_BIN_nMode(0)||!length||!dataPtr) { return; };

    _BIN_StreamLen(length);
    MEM_CopyBytes(dataPtr, _bin_ccnt + _bin_crsr, length);
    _bin_crsr += length;
};

func void BW_NextLine() { BW(2573, 2); };

func void BW_Textline(var string data) {
    BW_String(data);
    _bin_crsr -= 1;
    BW(2573, 2);
};

func void BW_Text(var string data) {
    BW_String(data);
    _bin_crsr -= 1;
};

func void BW_Close() {
    _bin_prefix = "BW_Close";
    if(!_BIN_Running()||!_BIN_nMode(0)) { return; };

    var int ptr; ptr = MEM_alloc(4);
    WIN_WriteFile(_bin_open, _bin_ccnt, _bin_crsr, ptr, 0);
    MEM_Free(ptr);
    MEM_Free(_bin_ccnt);
    WIN_CloseHandle(_bin_open);
    _bin_open = 0;
};

/*============
  BinaryReader
  ============*/

func int BR_OpenFile(var string file) {
    _bin_prefix = "BR_OpenFile";
    if(!_BIN_nRunning()) { return 0; };

    _bin_open = WIN_CreateFile(file, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
    if(_bin_open==-1) {
        _bin_open = 0;
		var string err; err = ConcatStrings(file, " - Datei konnte nicht geöffnet werden. Fehlercode ");
        _BIN_Err(ConcatStrings(err, IntToString(WIN_GetLastError())));
        return 0;
    };
    var int len; len = WIN_GetFileSize(_bin_open, 0);
    _bin_ccnt = MEM_Alloc(len);
    var int ptr; ptr = MEM_Alloc(4);
    WIN_ReadFile(_bin_open, _bin_ccnt, len, ptr, 0);
    MEM_Free(ptr);
	
    WIN_CloseHandle(_bin_open);
	
    _bin_clen = len;
    _bin_mode = 1;
    _bin_crsr = 0;
    return 1;
};

func int BR(var int length) {
    _bin_prefix = "BR";
    if(!_BIN_Running()||!_BIN_nMode(1)) { return 0; };

    if(length < 1) { length = 1; };
    if(length > 4) { length = 4; };

    if(_BIN_EOF(length)) { return 0; };

    var int b; b = MEM_ReadInt(_bin_ccnt + _bin_crsr);
    if(length < 4) {
        b = b&((256<<((length-1)<<3))-1);
    };
    _bin_crsr += length;
    return b;
};
func int BR_Int() { return BR(4); };
func int BR_Byte() { return BR(1); };
func string BR_Char() {
    MEMINT_HlpString = " ";
    var zString zs; zs = MEM_PtrToInst(STRINT_GetHelpStringAddress());
    MEM_WriteByte(zs.ptr, BR(1));
    var string str; str = MEMINT_HlpString;
    MEMINT_HlpString = "";
    return str;
};

var int _BR_StringRes;
func string _BR_String(var string cond) {
    _bin_prefix = "BR_String";
    if(!_BIN_Running()||!_BIN_nMode(1)) { return ""; };

    var int scpy; scpy = _bin_crsr;
    var int pos; pos = MEM_StackPos.position;
    MEM_CallByString(cond);
    if(_BR_StringRes) {
        MEM_StackPos.position = pos;
    };

    var zString zres; zres = MEM_PtrToInst(STRINT_GetHelpStringAddress());
    var int len; len = _bin_crsr - scpy;
    zres.ptr = MEM_Alloc(len);
    zres.res = len;
    MEM_CopyBytes(_bin_ccnt + scpy, zres.ptr, len);
    zres.len = len;
    var string str; str = MEMINT_HlpString;
    MEMINT_HlpString = "";
    return str;
};

func string BR_String() {
    return _BR_String("_BR_STRING_DEFAULT");
};func void _BR_String_Default() {
    _BR_StringRes = BR(1);
};

func int BR_Bytes(var int length) {
    var int ptr;
    if(length <= 4) {
        ptr = MEM_Alloc(4);
        MEM_WriteInt(ptr, BR(length));
        return ptr;
    };
    _bin_prefix = "BR_Bytes";
    if(!_BIN_Running()||!_BIN_nMode(1)) { return 0; };
    if(_bin_crsr + length > _bin_clen) {
        _bin_Err("Die angegebene Struktur ist in dieser Datei nicht vollständig enthalten.");
        return 0;
    };
    ptr = MEM_Alloc(length);
    MEM_CopyBytes(_bin_ccnt + _bin_crsr, ptr, length);
    _bin_crsr += length;
    return ptr;
};

func string BR_Textline() {
    return _BR_String("_BR_STRING_NEXTLINE");
};func void _BR_String_NextLine() {
    var int curr; curr = BR(2);
    if(!curr) { _BR_StringRes = 0; }
    else {
        _BR_StringRes = !(curr == 2573);
        _bin_crsr -= 1;
    };
};

func string BR_Text(var int length) {
    if(length <= 0) { return ""; };
    if(length == 1) { return BR_Char(); };
    _BR_StringRes = length;
    return _BR_String("_BR_STRING_LENGTH");
};func void _BR_String_Length() {
    var int tmp; tmp = BR(1);
    _BR_StringRes -= 1;
};

func void BR_Close() {
    _bin_prefix = "BR_Close";
    if(!_BIN_Running()||!_BIN_nMode(1)) { return; };

    MEM_Free(_bin_ccnt);
    _bin_open = 0;
};