include "template.nim"
let
  N,V=int.input
  W=Seq[N:int.input]
var a=0
for i,j,k in comb(N):
  if i+1+j+1+k+1<=V: a.chMax(W[i]+W[j]+W[k])
echo a