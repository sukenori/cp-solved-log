include "template.nim"
let
  N = int.input
  P = Seq[N: int.input]
var a = true
for i in 0 ..< N:
  if P[i] > (i div 10 + 1) * 10:
    a = false
a.asYesNo
