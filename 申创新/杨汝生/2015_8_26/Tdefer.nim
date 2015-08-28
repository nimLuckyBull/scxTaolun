discard """
proc main():void = 
  var f = open("numbers.txt")
  defer: close(f)                             #Top level defer statements are not supported since it's unclear what such a statement should refer to
  f.write "abc"                               #也就是defer 不能用在程序的顶层。
  f.write "def"
  
main()
"""

var f = open("numbers.txt")
try:
  f.write "abc"
  f.write "def"
finally:
  close(f)