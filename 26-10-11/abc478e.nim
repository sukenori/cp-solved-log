include "template.nim"
let N,Q=int.input
var
  g=Seq[N:seq[tuple[t,w:int]]]
  inv=Seq[N:0]
  f=true
loop Q:
  let t,u,v=int.input
  g[u-1].add((v-1,t))
  if t==1:
    if u==v: f=false
    inv[v-1]+=1
let m=inv.min
var q:HeapQueue[(int,int)]
for i in 0..<N:
  q.push((inv[i],i))
var
  d=Seq[N:false]
  a=Seq[N:0]
while q.len>0:
  let (invu,u)=q.pop
  if invu==m: a[u]=1
  d[u]=true
  for v in g[u]:
    if a[v.t].chMax(a[u]+v.w) and d[v.t]: f=false
f.asYesNo
if f: echo a.join(" ")