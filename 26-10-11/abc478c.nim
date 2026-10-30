include "template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
  s=A.sorted
var
  l=N-1
  r=0
for i in 0..<N:
  if A[i]<s[i]:
    l.chMin(min(i,s.upperBound(A[i])))
    r.chMax(max(i,s.upperBound(A[i])))
  if A[i]>s[i]:
    l.chMin(min(i,s.lowerBound(A[i])))
    r.chMax(max(i,s.lowerBound(A[i])))
(r-l+1<=K).asYesNo