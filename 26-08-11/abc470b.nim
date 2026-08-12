include "template.nim"
let
  N = int.input
  C = Seq[N: int.input].toCountTable
echo N - C.values.toSeq.sorted[^1]
