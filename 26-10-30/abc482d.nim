include "template.nim"
let
  N=int.input
  X=Seq[N:int.input]
for i in 0..<N:
  if i==0: echo (X[^1]-X[i]) div 2
  elif i==N-1: echo (X[i]-X[0]) div 2
  else: echo min(max((X[^1]-X[i]) div 2,(X[i+1]-X[0]) div 2),max((X[i]-X[0]) div 2,(X[^1]-X[i-1]) div 2))