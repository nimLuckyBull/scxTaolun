proc sum(x,y:int):int{.noSideEffect.}=
  x+y

proc minus(x,y:int):int{.noSideEffect.}=
  echo x                       #Error: 'minus' can have side effects
  x-y
