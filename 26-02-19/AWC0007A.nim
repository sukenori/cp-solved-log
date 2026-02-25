include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,M=int.input
  E=Seq[N:int.input].min
  C=Seq[M:int.input].sum
echo E*C