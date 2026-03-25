include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N, K = int.input
  P = Seq[N: int.input]
echo P.filterIt(it mod K == 0).sum
