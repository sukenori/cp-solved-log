include "template.nim"
let
  N,Q=int.input
  A=(@[0]&Seq[N:int.input]).cumsummed
  c=A.cumsummed
  n=(0..N).toSeq.cumsummed
loop Q:
  let L,R=int.input
  proc s(i:int):int=
    let j=n.upperBound(i)-1
    return c[j]+A[i-n[j]]
  echo s(R)-s(L-1)