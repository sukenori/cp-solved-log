include "template.nim"
let H, W = int.input
var
  A = Seq[H: string]
  Sh, Sw, Gh, Gw: int
for h in 0 ..< H:
  A[h] = string.input
  for w in 0 ..< W:
    if A[h][w] == 'S':
      Sh = h
      Sw = w
    elif A[h][w] == 'G':
      Gh = h
      Gw = w
var
  q = [(Sh, Sw)].toDeque
  d = Seq[H, W: -1]
d[Sh][Sw] = 0
while q.len > 0:
  let (h, w) = q.popFirst
  for (dh, dw) in [(-1, 0), (0, 1), (1, 0), (0, -1)]:
    let
      nh = h + dh
      nw = w + dw
    if nh in 0 ..< H and nw in 0 ..< W and A[nh][nw] != 'B' and d[nh][nw] == -1:
      if A[nh][nw] == 'P':
         d[nh][nw] = d[h][w] + 1
         q.addLast((nh, nw))
      else:
         d[nh][nw] = d[h][w]
         q.addFirst((nh, nw))
echo d[Gh][Gw]
