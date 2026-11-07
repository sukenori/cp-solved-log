#+ 公式解は尺取り、A列とB列まとめて一列にソートしてもよし
include "template.nim"
let
  N, M = int.input
  A = Seq[N: int.input].sorted
  B = Seq[M: int.input].sorted
var
  j = 0
  a = int.inf
for i in 0 ..< N:
  while j < M and B[j] <= A[i]:
    a.chMin(A[i] - B[j])
    j += 1
  if j < M:
    a.chMin(B[j] - A[i])
echo a
