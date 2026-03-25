include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N, K = int.input
  A = Seq[N: int.input]
echo A.maxIndex + 1
