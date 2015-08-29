proc dimensions():tuple[w,h:int]=
   (15,20)
  
echo(dimensions().w)

proc sum*(x,y:int):int=   #`*`意味着出口,在其它模块外可以访问到
  x*y

proc sum(xs:seq[int]):int=
  for x in xs:
    result+=x


dimensions()                  #value of type 'tuple[w: int, h: int]' has to be discarded
discard dimensions()
var (y,z)=dimensions()

echo sum(y,z)            #程序的调用方式有多种
echo y.sum(z)
echo y.sum z 
