include "template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
var a=if A[0]==K: 1 else: 0
for i in 1..<N:
  if A[i-1]<K and A[i]>=K: a+=1
  elif A[i-1]>K and A[i]<=K: a+=1
echo a