include "template.nim"
let N = int.input
var g = Seq[N: seq[int]]
loop N - 1:
  let A, B = int.input - 1
  g[A].add(B)
  g[B].add(A)
for i in 0 ..< N:
  g[i].sort
var
  d = Seq[N: false]
  a: seq[int]
proc dfs(A: int) =
  d[A] = true
  for B in g[A]:
    if not d[B]:
      a.add(A + 1)
      dfs(B)
  d[A] = false
  a.add(A + 1)

dfs(0)
echo a.join(" ")
