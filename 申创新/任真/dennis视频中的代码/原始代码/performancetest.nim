discard """
peformancetest.nim,performancetest.c,performancetest.py
用求前100000000个数的素数,来测试c,nim,python的性能
"""

import math
proc eratosthenes(n):auto=
  result=newSeq[int8](n+1)
  result[0]=1;result[1]=1
  for i in 0..int sqrt(float n):
    if result[i]==0:
      for j in countup(i*i,n,i):
        result[j]=1
  #echo result

discard eratosthenes(100_000_000)
