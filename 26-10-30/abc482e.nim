include "template.nim"
let N=int.input
var g=Seq[N:seq[int]]
loop N-1:
  let u,v=int.input-1
  g[u].add(v); g[v].add(u)
let C=Seq[N:int.input]
var
  q=[0].toDeque
  d=Seq[N:0]
while q.len>0:
  let u=q.popFirst
  for v in g[u]:
    if d[v]==0:
      d[v]=d[u]+1
      q.addLast(v)
let s=d.find(d.max)
q=[s].toDeque
d=Seq[N:0]
while q.len>0:
  let u=q.popFirst
  for v in g[u]:
    if d[v]==0:
      d[v]=d[u]+1
      q.addLast(v)
let
  m=d.max
  t=d.find(m)
var r:seq[(int,int)]
for i in 0..<N:
  if d[i]==m: r.add((i,C[i])); dump "r",i,C[i]
q=[t].toDeque
d=Seq[N:0]
while q.len>0:
  let u=q.popFirst
  for v in g[u]:
    if d[v]==0:
      d[v]=d[u]+1
      q.addLast(v)
var l:seq[(int,int)]
for i in 0..<N:
  if d[i]==m: l.add((i,C[i])); dump "l",i,C[i]
dump l
dump r
let
  cl=l.mapIt(it[1]).toCountTable
  cr=r.mapIt(it[1]).toCountTable
var a=0
for k,v in cl:
  if cr.hasKey(k):
    a+=v*cr[k]
echo a
