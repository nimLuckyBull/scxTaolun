proc dimensions():tuple[w,h:int]=
   #(15,20)
   result=(15,20)          #result代表返回值类型
echo(dimensions().w)

proc sum*(x,y:int):int=   #`*`意味着出口,在其它模块外可以访问到
  x*y

proc sum(xs:seq[int]):int=
  for x in xs:
    result+=x

var x:seq= @[1,2,3]
echo(sum(x))

#dimensions()   #value of type 'tuple[w: int, h: int]' has to be discarded
discard dimensions()
var (y,z)=dimensions()

echo sum(y,z)            #程序的调用方式有多种
echo y.sum(z)
echo y.sum z 
