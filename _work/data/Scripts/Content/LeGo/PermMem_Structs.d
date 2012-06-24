/***********************************\
        KLASSEN FÜR PERMMEM
\***********************************/

/* Inhalt:
	int
	func
	float
	string
    zCList
    zCListSort
    zCArray
 */
 
class _int { var int i; };
instance int@(_int);
instance func@(_int);
instance float@(_int);

class _string { var string s; };
instance string@(_string);

const string zCList_Struct = "int zCList*";
instance zCList@(zCList);

const string zCListSort_Struct = "int|2 zCListSort*";
instance zCListSort@(zCListSort);

// zCArray ist zu komplex um als struct dargestellt zu werden.
// Deshalb ein eigener Archiver:
func void zCArray_Archiver(var zCArray arr) {
    BW_Int(arr.numInArray);
    BW_Bytes(arr.array, arr.numInArray * 4);
};
func void zCArray_Unarchiver(var zCArray arr) {
    arr.numInArray = BR_Int();
    arr.numAlloc = arr.numInArray;
    arr.array = BR_Bytes(arr.numInArray * 4);
};
func void zCArray_Delete(var zCArray arr) {
	if(arr.array) {
		MEM_Free(arr.array);
	};
};
instance zCArray@(zCArray);