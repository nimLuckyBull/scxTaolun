proc `++` (x:var int;y=1;z=0):int=
  result=x+y+z

var a=10
echo(++a)
echo(a++2)
echo(a.`++`(3,4))
