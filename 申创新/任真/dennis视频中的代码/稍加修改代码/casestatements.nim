import strutils

case stdin.readLine.parseInt()        #Error: not all cases are covered

of 1:
  echo "go language"

of 2,6:
  echo "rust language"

of 3..5,7..9:
  echo "nimrod language"

else:
  discard


discard """
若没有
else:
  discard
会出现case stdin.readLine.parseInt()        #Error: not all cases are covered
"""
