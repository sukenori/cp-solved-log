include "template.nim"
var
  N, P = int.input
  H = Seq[N: int.input]
  a = 0
for i in 0 ..< N:
  if P >= H[i]:
    a += 1
    P -= H[i]
  else:
    P += H[i]
echo a
