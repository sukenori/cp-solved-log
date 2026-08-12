include "template.nim"
let N, Q = int.input
var
  P = Seq[N: int.input]
  rP = Seq[N: int]
for i in 0 ..< N:
  rP[P[i] - 1] = i + 1
query(Q):
  op 1:
    let x, y = int.input
    swap(P[x - 1], P[y - 1])
    swap(rP[P[y - 1] - 1], rP[P[x - 1] - 1])
  op 2:
    swap(P, rP)
echo P.join(" ")
