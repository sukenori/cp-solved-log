include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,L,W=int.input
  D=Seq[N:int.input]
echo D.filterIt(it in L-W..L+W).len