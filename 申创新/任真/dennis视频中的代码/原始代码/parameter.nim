proc `++` (x:var int;y=1;z=0)=
  x=x+y+z

var a=10
++a
a++2
a.`++`(3,4)
