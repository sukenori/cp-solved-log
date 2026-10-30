include "template.nim"
let N,M,S,T=int.input
var g=Seq[N:seq[int]]
loop M:
  let A,B=int.input-1
  g[A].add(B)
var
  q=[S-1].toDeque
  d=Seq[N:int.inf]
d[S-1]=0
while q.len>0:
  let A=q.popFirst
  for i,B in g[A].sorted:
    if i==0:
      if d[B]>d[A]:
        d[B]=d[A]
        q.addFirst(B)
    else:
      if d[B]>d[A]+1:
        d[B]=d[A]+1
        q.addLast(B)
echo if d[T-1]<int.inf: d[T-1] else: -1