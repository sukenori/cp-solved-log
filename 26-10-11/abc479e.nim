include "template.nim"
let N=int.input
var g=Seq[N:seq[tuple[t,w:int]]]
for i in 1..<N:
  let A,B=int.input-1
  g[A].add((B,i)); g[B].add((A,i))
var
  d=Seq[N:false]
  m=Seq[N:int.inf]
proc dfs(p,u:int):int=
  d[u]=true
  var s=1
  for v in g[u]:
    if not d[v.t]: s+=dfs(u,v.t)
  if s>N div 2: m[u].chMin(s)
  else: m[p].chMin(N-s)
  return s
discard dfs(-1,0)
let s=m.minIndex
var a=Seq[N:0]
a[s]=N*(N-1) div 2
var q=[s].toDeque
while q.len>0:
  let u=q.popFirst
  for v in g[u]:
    if a[v.t]==0:
      a[v.t]=a[u]-v.w
      q.addLast(v.t)
echo a.join(" ")