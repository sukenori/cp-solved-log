include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
var
  l=0
  r=10^9*10^5+1
while r-l>1:
  let m=(l+r) div 2
  var
    i=0
    c=0
  while i<N:
    c+=1
    var s=0
    while i<N and s<m: s+=A[i]; i+=1
  if c>=K: l=m
  else: r=m
echo l