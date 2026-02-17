include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  S=Seq[N:string.input]
  m=S.mapIt(it.len).max
for i in 0..<N:
  let d=".".repeat((m-S[i].len) div 2)
  echo d&S[i]&d