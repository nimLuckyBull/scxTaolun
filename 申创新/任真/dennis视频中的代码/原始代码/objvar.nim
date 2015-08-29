type
  Position=tuple[x,y:float]
  
  GraphicKind = enum Circle,Rectangle

  Graphic = object
    pos:Position
    case kind:GraphicKind
    of Circle:
      radius:float
    of Rectangle:
      size:tuple[w,h:float]


var c= Graphic(kind:Circle,pos:(20.5,30.1),radius:10.9)
