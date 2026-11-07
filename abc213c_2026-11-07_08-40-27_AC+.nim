#+ 座標圧縮の基本は二分探索
include "template.nim"
let H, W, N = int.input
var A, B = Seq[N: int]
(A, B).input
let
  h = A.toHashSet.toSeq.sorted
  w = B.toHashSet.toSeq.sorted
for i in 0 ..< N:
  echo h.upperBound(A[i]), " ", w.upperBound(B[i])
