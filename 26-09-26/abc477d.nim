include "template.nim"
let N,Q=int.input
var
  s=Seq[N: @[0]]
  C={0:"a"}.toTable
for i in 0..<Q:
  let q=int.input
  if q==1:
    let X=int.input-1
    s[X].add(i)
  else:
    C[i]=string.input
var q:HeapQueue[(int,int,int)]
for i in 0..<N:
  if s[i].len mod 2==1: s[i].add(Q-1)
  for j in 0..<s[i].len div 2:
    q.push((-s[i][2*j+1],-s[i][2*j],i))
var a=Seq[N:""]
for k in C.keys.toSeq.sorted(Descending):
  while q.len>0 and -q[0][0]>=k:
    let i=q.pop
    if k >= -i[1] and a[i[2]]=="": a[i[2]]=C[k]
echo a.join