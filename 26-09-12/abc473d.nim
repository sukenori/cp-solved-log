include "template.nim"
let N, K = int.input
var
  a: seq[seq[int]]
  ai = Seq[N: int]
proc f(i, r: int) =
  if i == 1:
    ai[0] = r
    a.add(ai)
  else:
    for j in 0 .. r div i:
      ai[i - 1] = j
      f(i - 1, r - i * j)

f(N, K)
echo a.sorted.mapIt(it.join(" ")).join("\n")
