discard """
在源程序的基础上没有做任何改动,不知要怎么该
"""


proc readLine():string{.tags:[FReadIO].}

proc doRaise(){.raises:[EIO,EOverflow].}

proc lastChar():char=
  let line=stdin.readLine()
  #hint:FReadIO[user]
  if line.len==0:
    raise newException(EIO,"IO")
    #hint:ref EIO[user]
  return line[line.high]
  {.effects.}
