type
  dice=range[0..5]
var d:dice=4
d=6    #Error: conversion from int literal(6) to dice is invalid


var ds:array[100,dice]
ds[50]=5
ds[60..69]=ds[50..59]
for d in ds:
  echo d

ds[105]=0                    #error :index out of bounds


var ds:array['a'..'z',dice]
ds['f']=5
for d in ds:
  echo d

ds['D']=0                   #Error: index out of bounds


var newDs:seq[dice]= @[]

for i,d in ds:
  if i>10 and d==5:
    newDs.add(d)

echo newDs


var newDs=newSeq[dice]()
for i,d in ds:
  if i>'g' and d==5:
     newDs.add(d)
echo newDs
