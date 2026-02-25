include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,Q=int.input
  V=Seq[N:int.input]
  P=Seq[N-1:int.input]
  X=Seq[Q:int.input]
var a=Seq[N:int]
a[0]=V[0]
for i in 1..<N:
  a[i]=a[P[i-1]-1]+V[i]
echo X.mapIt(a[it-1]).join("\n")