include "template.nim"
var
  N,Q=int.input
  L,R=Seq[N-1:int.input]
L = @[int.inf] & L
R = R & @[int.inf]
var
  l,r=Seq[N:int.inf]
  ml,mr=int.inf
for i in 1..<N:
  ml.chMin(L[N-i]); l[N-1-i]=ml
  mr.chMin(R[i-1]); r[i]=mr
loop Q:
  var s,t=int.input-1
  if s<t:
    echo min(R[s],L[s]+r[s])
  if t<s:
    echo min(L[s],R[s]+l[s])