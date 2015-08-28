template times(x:expr,y:stmt):stmt=
   for i in 1..x:
     y
 
10.times:
   echo "hi"


10.times(echo "hi";echo)  # Error: type mismatch: got (int literal(10), empty, proc (x: varargs[expr]){.gcsafe, locks: 0.})
10.times(echo "hi") 


