include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N, S, T = int.input
  A = Seq[N: int.input]
(S + A.sum.ceilDiv(60) <= T).asYesNo
