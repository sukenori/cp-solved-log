include "template.nim"
include "math/bisect.nim"
let N = int.input
var S, C = Seq[N: int]
(S, C).input
let sS = S.sorted
echo:
  sumOf(i, 0 ..< N):
    max(0, sS.less(C[i]).last - sS.greaterEqual(S[i]).first)
