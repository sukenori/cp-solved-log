include "template.nim"
let
  Q=int.input
  S,T=string.input
  N=S.len
  n=T.len
var d:seq[int]
for i in 0..N-n:
  if S[i..<i+n]==T: d.add(i)
loop Q:
  let
    L,R=int.input-1
    l=d.lowerBound(L)
  (l<d.len and d[l] in 0..N-n and d[l]+n-1<=R).asYesNo