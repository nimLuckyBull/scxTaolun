type
  Position=tuple[x,y:float]

  Graphic = object of TObject     
    pos:Position

  Circle = object of Graphic
    radius:float

  Rectangle = object of Graphic
    size:tuple[w,h:float]

var c = Circle(pos:(20.5,30.1),radius:10.9)



