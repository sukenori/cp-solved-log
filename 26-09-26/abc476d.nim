include "template.nim"
var
  N,M,K,X,Y=int.input
  A=Seq[N:int.input].sorted.cumsummed
  B=Seq[M:int.input].sorted
var
  a=A.upperBound(X+K*Y)
  ai=0
for i in 0..<M:
  if B[i]<=K*Y:
    ai+=1
    Y-=B[i].ceilDiv(K)
    X+=(K-B[i] mod K) mod K
  a.chMax(ai+A.upperBound(X+K*Y))
echo a