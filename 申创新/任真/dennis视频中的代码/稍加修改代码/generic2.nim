discard """

import strutils
proc sum(xs:seq[int|string]):int=
  for x in xs:
    let y=
      when x is int:                      #基础教程中提到,if和when作用基本相同,这里为什么不可以将when改为if
        x
      else:parseInt(x)
    result+=y
echo sum(@["12","14","9"])
echo sum(@[12,14,9])

"""

import strutils
proc sum(xs:seq[int|string]):int=
  for x in xs:
    let y=
      if x is int:                      #基础教程中提到,if和when作用基本相同,这里为什么不可以将when改为if
        x
      else:parseInt(x)
    result+=y
echo sum(@["12","14","9"])
echo sum(@[12,14,9])
