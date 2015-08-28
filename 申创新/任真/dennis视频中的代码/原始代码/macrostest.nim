proc `^` *(base,exp:int):int=
  var(base,exp)=(base,exp)
  result=1
  while exp!=0:
    if(exp and 1)!=0:
      result*=base
    exp=exp shr 1
    base *= base

import macros                   #导入macros模块

macro potSum(n:int):expr=
  var sum=0
  for i in 1..int(n.intVal):
    sum += 2^i
  #result=parseExpr($sum)             #parse string to AST
  result=newIntLitNode(sum)           #directly build AST

echo potSum(10)


