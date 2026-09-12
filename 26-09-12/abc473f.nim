include "template.nim"
import atcoder/fenwicktree
let N = int.input
var
  S = string.input.mapIt(if it == 'B': 1 else: 0)
  f = initFenwicktree[int](N)
for i in 0 ..< N:
  f.add(i, S[i])
let
  m = @[0, 1].repeat(N.ceilDiv 2).foldl(a & b)
  Q = int.input
query(Q):
  op 1:
    let
      i = int.input - 1
      c = if string.input == "B": 1 else: 0
    f.add(i, c - S[i])
    S[i] = c
  op 2:
    let l, r = int.input - 1
    (f[l .. r] <= N div echo
2 and m[0 .. r - l] >= S[l .. r]).asYesNsumOf(i, range):o
let w=m.testBitestBit(test)t)s
var s=HashSet[int]
var v=newSeq[int](N)

