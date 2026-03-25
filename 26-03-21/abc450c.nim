include "template.nim"
let
  H, W = int.input
  S = Seq[H: string.input]
var
  d = Seq[H, W: bool]
  f: bool
  a = 0
proc dfs(h, w: int) =
  d[h][w] = true
  if h == 0 or h == H - 1 or w == 0 or w == W - 1:
    f = true
  for (dh, dw) in [(-1, 0), (0, 1), (1, 0), (0, -1)]:
    let
      nh = h + dh
      nw = w + dw
    if nh in 0 ..< H and nw in 0 ..< W and not d[nh][nw]:
      if S[nh][nw] == '.':
        dfs(nh, nw)

for h in 0 ..< H:
  for w in 0 ..< W:
    if S[h][w] == '.' and not d[h][w]:
      f = false
      dfs(h, w)
      if not f:
        a += 1
echo a
