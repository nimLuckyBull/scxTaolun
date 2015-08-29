while true:
  if 2>3:
    echo "hi"
  #elif 1:             #Error: type mismatch: got (int literal(1)) but expected 'bool'
   # echo :"then"
  elif 3>2:
    echo "hello"
    break
  else:
    echo "bye"
    break


block loops:
  while true:
    while "foo" != "bar":
      break loops
