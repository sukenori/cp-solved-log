include "template.nim"
let N = int.input
var f = Seq[N + 1: 0]
for i in 1 .. N:
  var d = i
  while d <= N:
    f[d] += 1
    d += i
var a = 0
for K in 1 .. N:
  a += K * f[K]
echo a
