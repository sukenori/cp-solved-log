include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N, M, D = int.input
  T = Seq[N: int.input]
echo (0 ..< N).mapIt(max(0, T[it] - M).ceilDiv(D)).sum
