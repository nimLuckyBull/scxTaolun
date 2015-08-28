import sequtils

let
  a= @[1,2,3,4]
  b=a.concat(@[5,6,7]).map(proc (x:int):string="number" & $x)


let
  colors= @["red","yellow","black"]
  f1=filter(colors,proc(x):bool=x.len<6)
  f2=colors.filter do(x) ->bool:x.len>5

assert f1 == @["red","black"]
assert f2 == @["yellow"]


discard """
proc filter*[T](seq1: seq[T], pred: proc(item: T): bool {.closure.}): seq[T] =
  ## Returns a new sequence with all the items that fulfilled the predicate.
  ##
  ## Example:
  ##
  ## .. code-block::
  ##   let
  ##     colors = @["red", "yellow", "black"]
  ##     f1 = filter(colors, proc(x: string): bool = x.len < 6)
  ##     f2 = filter(colors) do (x: string) -> bool : x.len > 5
  ##   assert f1 == @["red", "black"]
  ##   assert f2 == @["yellow"]
  accumulateResult(filter(seq1, pred))
"""

