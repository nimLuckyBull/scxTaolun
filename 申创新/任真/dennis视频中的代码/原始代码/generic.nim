proc sum[T](x,y:T):T=
  x+y

echo sum(12.5,13.5)
echo sum("foo","bar")    #error:type mismatch for `+`


proc sum[T:int|int64|float](x,y:T):T=
  x+y




