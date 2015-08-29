var name:string="world"

var str="hello" & name

for i in 1..10:
  echo str

proc printf(formatstr:cstring)
  {.header:"<stdio.h>",varargs.}

printf("%s %d\n",str,5)
