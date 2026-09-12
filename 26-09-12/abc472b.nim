include "template.nim"
let
  N = int.input
  L = Seq[N: int.input]
echo:
  minOf(i, 1 ..< N):
    abs(L[i ..^ 1].sum - L[0 ..< i].sum)
