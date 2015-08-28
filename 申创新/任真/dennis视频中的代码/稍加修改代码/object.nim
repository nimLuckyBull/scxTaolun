type
  Position=tuple[x,y:float]

  #Graphic = object of TObject    #object.nim(4, 23) Warning: use RootObj instead; TObject is deprecated [Deprecated]
  Graphic = object of RootObj
    pos:Position

  Circle = object of Graphic
    radius:float

  Rectangle = object of Graphic
    size:tuple[w,h:float]

var c = Circle(pos:(20.5,30.1),radius:10.9)

discard """
/home/renzhen/nimroddennis/nimcache/brainfuck_object.o：在函数‘objectInit’中：
brainfuck_object.c:(.text+0x16d): `objectInit'被多次定义
/home/renzhen/nimroddennis/nimcache/stdlib_system.o:stdlib_system.c:(.text+0x124ba)：第一次在此定义
collect2: error: ld returned 1 exit status
Error: execution of an external program failed
"""

