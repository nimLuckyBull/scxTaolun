import os

const debug=false


proc log *(msg:string)=
  if debug:
    echo msg

template log *(msg:string)=
  if debug:
    echo msg

proc expensive():string=
  sleep(milsecs=1000)
  result="That was difficult"

10.times:                  #Error: undeclared identifier: 'times'
  log(expensive())
