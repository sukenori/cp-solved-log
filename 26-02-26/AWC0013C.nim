include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  S=Seq[N:int.input]
echo S.sorted.find(S[K-1])