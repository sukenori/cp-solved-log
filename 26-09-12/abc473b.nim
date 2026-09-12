include "template.nim"
let
  N = int.input
  A = Seq[N: int.input].toCountTable
var a = 0
for k, v in A:
  if v mod 2 == 1:
    a += k
echo a
