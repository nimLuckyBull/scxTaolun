proc sum[T](x,y:T):T=
  x+y


echo sum(12.5,13.5)

proc `+`(x,y:string):string=         #为字符串类型自定义`+`操作符
  result = x & y

proc sum2[T:string](x,y:T):T=
  x + y

echo sum2("foo","bar") 


