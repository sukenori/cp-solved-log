include "template.nim"
let
  N, Q = int.input
  P = Seq[N: int.input]
  a = Seq[Q: int.input]
var
  d: Deque[int]
  h: HashSet[int]
for ai in a.reversed:
  if ai notin h:
    d.addFirst(ai)
    h.incl(ai)
for Pi in P.reversed:
  if Pi notin h:
    d.addFirst(Pi)
    h.incl(Pi)
echo d.toSeq.join(" ")
