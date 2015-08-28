discard """
noSideEffect pragma 出现在手册中,但我不明白这个编译指示的意义,测试代码发现,若出现该编译指示,过程中只能操作参数变量,且仅能操作一次,但不可输出
"""


proc sum(x,y:int):int{.noSideEffect.}=
  x+y

proc minus(x,y:int):int{.noSideEffect.}=
  #echo x  #Error: 'minus' can have side effects
  x-y
