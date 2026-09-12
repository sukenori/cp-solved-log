include "template.nim"
let
  N, M, K = int.input
  A = Seq[N: int.input]
var
  e = Seq[N: 0]
  s = 0
for i in 0 ..< N:
  if i - M >= 0:
    s -= e[i - M]
  if s + A[i] <= K:
    echo "Yes"
    e[i] = A[i]
    s += A[i]
  else:
    echo "No"
