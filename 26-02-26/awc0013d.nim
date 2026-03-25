include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, M = int.input
var A = Seq[M, N: int]
for i in 0 ..< N:
  for j in 0 ..< M:
    A[j][i] = int.input
for i in 0 ..< M:
  A[i].sort
var a = 0
for i in 0 ..< M:
  for j in 1 ..< N:
    a += (A[i][j] - A[i][j - 1]) * ((N - j) * j)
echo a
