include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var
  H, W, N = int.input
  p = Seq[N: tuple[i, h, w: int]]
for i in 0 ..< N:
  let h, w = int.input
  p[i] = (i, h, w)
var
  hp = p.sortedByIt(-it.h).toDeque
  wp = p.sortedByIt(-it.w).toDeque
  x = 1
  y = 1
  d: HashSet[int]
  a = Seq[N: tuple[x, y: int]]
while d.len < N:
  while hp.peekFirst.i in d:
    hp.popFirst
  while wp.peekFirst.i in d:
    wp.popFirst
  if hp.peekFirst.h == H:
    let (i, h, w) = hp.popFirst
    a[i] = (x, y)
    W -= w
    y += w
    d.incl(i)
  if wp.peekFirst.w == W:
    let (i, h, w) = wp.popFirst
    a[i] = (x, y)
    H -= h
    x += h
    d.incl(i)
for i in 0 ..< N:
  echo a[i].x, " ", a[i].y
