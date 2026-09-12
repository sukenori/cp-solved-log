include "template.nim"
let
  N = int.input
  A = Seq[N: int.input]
echo A[N div 2 ..^ 1].sum
