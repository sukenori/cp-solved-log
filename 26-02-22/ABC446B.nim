include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var
  d=Seq[M:bool]
  a=Seq[N:int]
for i in 0..<N:
  let
    L=int.input
    X=Seq[L:int.input]
  for Xj in X:
    if not d[Xj-1]:
      a[i]=Xj
      d[Xj-1]=true
      break
echo a.join("\n")