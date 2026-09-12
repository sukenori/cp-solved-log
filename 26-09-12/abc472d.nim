include "template.nim"
let
  H, W, K = int.input
  S = Seq[H: string.input]
var
  h = (0 ..< H).toSeq.toHashSet
  w = (0 ..< W).toSeq.toHashSet
for i, j in prod(H, W):
  if S[i][j] == '#':
    h.excl(i)
    w.excl(j)
var
  q: Deque[(int, int)]
  d = Seq[H, W: -1]
  a = 0
for i in h:
  for j in w:
    q.addFirst((i, j))
    d[i][j] = 0
    a += 1
while q.len > 0:
  let (i, j) = q.popFirst
  for (di, dj) in [(-1, 0), (0, 1), (1, 0), (0, -1)]:
    let
      ni = i + di
      nj = j + dj
    if ni in 0 ..< H and nj in 0 ..< W and S[ni][nj] == '.' and d[ni][nj] == -1 and
        d[i][j] < K:
      d[ni][nj] = d[i][j] + 1
      a += 1
      q.addLast((ni, nj))
echo a
