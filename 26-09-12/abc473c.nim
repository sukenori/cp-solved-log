include "template.nim"
let
  N, K = int.input
  A = Seq[N: int.input].toCountTable
  m = A.values.toSeq.max
echo (1 .. K).countIt(A.getOrDefault(it)+1 >= m)
