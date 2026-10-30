include "template.nim"
let
  N,M=int.input
  S=Seq[N:string.input]
  T=Seq[M:string.input]
var a=Seq[N:0]
for i in 0..<M:
  var d=Seq[N:T[i].len]
  for j in 0..<N:
    if T[i].len==S[j].len:
      d[j]=0
      for k in 0..<T[i].len:
        if T[i][k]!=S[j][k]: d[j]+=1
  if d.min==0: a[d.find(0)]+=1
  elif d.filterIt(it==1).len==1: a[d.find(1)]+=1
echo a.join("\n")