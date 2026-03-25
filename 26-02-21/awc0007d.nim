include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Others/Cumulative_Sum.nim"
let N, A, B = int.input
var a, b = initImos2D[int](N, N)
loop A:
  let r1, c1, r2, c2 = int.input - 1
  a.add(r1 .. r2, c1 .. c2, 1)
loop B:
  let r1, c1, r2, c2 = int.input - 1
  b.add(r1 .. r2, c1 .. c2, 1)
var
  ca = a.build
  cb = b.build
var ans = 0
for i, j in perms(N, N):
  if ca[i .. i][j .. j] > 0 and cb[i .. i][j .. j] > 0:
    ans += 1
echo ans
