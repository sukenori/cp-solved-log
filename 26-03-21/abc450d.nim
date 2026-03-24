include "template.nim"
let
  N, K = int.input
  A = Seq[N: int.input]
var
  m = A.mapIt(it mod K).toHashSet.toSeq.sorted
  n = m.len
m = m & m.mapIt(it + K)
echo:
  minOf(i, 0 ..< n):
    m[i + n - 1] - m[i]
