{.compile: "hi.c".}

proc hi*(name:cstring) {.importc: "chi".}

hi("GPN14")

discard """
自动生成的c2nim库定义

proc set_default_dpi*(dpi: cdouble):{.cdecl
   importc:"rsvg_set_default_dpi",
   dynlib:"librsvg-2.so".}

"""
