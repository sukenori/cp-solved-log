include "template.nim"
let N = int.input
var C = Seq[N, N: 0]
for i in 0 ..< N - 1:
  for j in i + 1 ..< N:
    let Cij = int.input
    C[i][j] = Cij
var f = "No"
for a in 0 ..< N - 2:
  for b in a + 1 ..< N - 1:
    for c in b + 1 ..< N:
      if C[a][c] > C[a][b] + C[b][c]: f = "Yes"
echo f

