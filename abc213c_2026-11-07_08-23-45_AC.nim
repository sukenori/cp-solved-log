include "template.nim"
let H, W, N = int.input
var A, B = Seq[N: int]
(A, B).input
let
  h = A.toHashSet.toSeq.sorted
  w = B.toHashSet.toSeq.sorted
  th = (0 ..< h.len).mapIt((h[it], it + 1)).toTable
  tw = (0 ..< w.len).mapIt((w[it], it + 1)).toTable
for i in 0 ..< N:
  echo th[A[i]], " ", tw[B[i]]
