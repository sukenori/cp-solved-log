include "template.nim"
let N,K,T=int.input
var A=(Seq[N:int.input] & @[T]).filterIt(it<=T).sorted
var
  l=0
  a=0
for i in 0..<A.len:
  if l<A[i]: a+=(A[i]-l).ceilDiv(K)
  l=A[i]+K
echo a