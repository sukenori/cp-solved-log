include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M,K=int.input
var S=Seq[N:int.input]
loop M:
  let P,V=int.input
  S[P-1]=V
echo S.filterIt(it<K).len