
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
