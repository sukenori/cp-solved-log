include "template.nim"
let
  N,Q=int.input
  A,B=Seq[N:int.input]
  c=(@[0]&A&A).cumsummed
var b=B
let s=B.minIndex
for i in 1..<N:
  if b[(s+i) mod N]>b[(s+i-1) mod N]+A[(s+i-1) mod N]:
    b[(s+i) mod N]=b[(s+i-1) mod N]+A[(s+i-1) mod N]
for i in 1..<N:
  if b[(s-i+N) mod N]>b[(s-i+1+N) mod N]+A[(s-i+N) mod N]:
    b[(s-i+N) mod N]=b[(s-i+1+N) mod N]+A[(s-i+N) mod N]
loop Q:
  let S,T=int.input-1
  if T<N:
    echo [c[T]-c[S],c[S+N]-c[T],b[S]+b[T]].min
  else:
    echo b[S]