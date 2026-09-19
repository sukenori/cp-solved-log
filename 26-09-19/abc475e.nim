include "template.nim"
let
  N,M,K=int.input
  T=string.input
  S=Seq[N:string.input]
var c=Seq[2,K:HashSet[int]]
for i,Ti in T:
  for j in 0..<N:
    c[(S[j][i]==Ti).int][i].incl(j)
let Q=int.input
loop Q:
  block b:
    let i,j=int.input-1
    if i in c[0][j]: c[0][j].excl(i); c[1][j].incl(i)
    else: c[1][j].excl(i); c[0][j].incl(i)
    var
      d=(0..<N).toSeq.toHashSet
      s=0
    for k in 0..<K:
      let p=d*c[1][k]
      if s+p.len<=M:
        if i in p: echo "Yes"; break b
        d=d-p; s+=p.len
      else: d=d-c[0][k]
    echo "No"