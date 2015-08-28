proc printer(x:int):proc=
  proc y()=
    echo "hello" & $x
  return y  

proc callMe(p)=
  for i in 1..10:
    p()

var printer10=printer(10)

printer10()

callMe(printer10)
