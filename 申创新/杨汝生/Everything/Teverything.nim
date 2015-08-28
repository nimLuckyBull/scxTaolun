import unicode
{.deadCodeElim: on.}

type
   LPCWSTR = ptr uint16

const dllname = "Everything64"
  
proc Everything_GetMax() {.importc: "Everything_GetMax", cdecl, dynlib: dllname.}

proc Everything_SetSearchA(lpstring:cstring) {.importc: "Everything_SetSearchA", cdecl, dynlib: dllname.}
proc Everything_SetSearchW(lpstring:LPCWSTR) {.importc: "Everything_SetSearchW", cdecl, dynlib: dllname.}


proc Everything_SetMatchPath(bEnable:bool) {.importc: "Everything_SetMatchPath", cdecl, dynlib: dllname.}

Everything_GetMax()
Everything_SetMatchPath(true)

var str: string = "H"
var cstr: cstring = str
#echo str
#proc Everything_SetSearchA(cstr)


var lpstring:LPCWSTR
lpstring = cast[LPCWSTR] (97'u16)
#echo lpstring
Everything_SetSearchW(lpstring)


