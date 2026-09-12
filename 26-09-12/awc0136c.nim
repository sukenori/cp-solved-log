include "template.nim"
let
  N = int.input
  H = Seq[N: int.input]
var
  d = Seq[N: 0]
  j, m = 0
for i in 1 ..< N:
  if m < H[i] and H[i] <= H[j]:
    d[j] += 1
  elif H[j] <= H[i]:
    m = H[j]
    j = i
var a = 0
m = 0
for i in 0 ..< N:
  if m.chMax(H[i]):
    a += 1
echo a + d.max - 1
