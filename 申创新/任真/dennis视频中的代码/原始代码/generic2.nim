import strutils
proc sum(xs:seq[int|string]):int=
  for x in xs:
    let y=
      when x is int:
        x
      else:parseInt(x)
    result+=y
echo sum(@["12","14","9"])
echo sum(@[12,14,9])
