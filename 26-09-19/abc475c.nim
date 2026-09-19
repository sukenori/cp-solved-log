include "template.nim"
let
  N,S,L=int.input
  A=Seq[N-1:int.input]
  c=(@[0]&A).cumsummed
var a=0
for i in 0..<N:
  var l,r:int
  if i<=S-1:
    if c[S-1]-c[i]<=L:
      l=i
      r=S-1
    for j in S-1..<N:
      if L-(c[S-1]-c[i])*2>=c[j]-c[S-1]: r=j
  else:
    if c[i]-c[S-1]<=L:
      l=S-1
      r=i
    for j in (S-1..0,1):
      if L-(c[i]-c[S-1])*2>=c[S-1]-c[j]: l=j
  a.chMax(r-l+1)
echo a