include "template.nim"
let
  N, K = int.input
  A = Seq[N: int.input]
var
  r, a = 0
  s = [0].toHashSet
for i in 0 ..< N:
  let nr = (r + A[i]) mod K
  if nr in s:
    a += 1
    r = 0
    s = [0].toHashSet
  else:
    s.incl(nr)
    r = nr
echo a
