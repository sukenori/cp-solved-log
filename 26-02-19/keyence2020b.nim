include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N = int.input
var r = Seq[N: tuple[l, r: int]]
for i in 0 ..< N:
  let X, L = int.input
  r[i] = (X - L, X + L)
r = r.sortedByIt(it.r)
var
  R = -int.inf
  a = 0
for i in 0 ..< N:
  if r[i].l < R:
    continue
  a += 1
  R = r[i].r
echo a
