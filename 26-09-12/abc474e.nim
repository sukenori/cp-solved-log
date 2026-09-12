include "template.nim"
let T = int.input
loop T:
  let N = int.input
  var A, B = Seq[N: int]
  (A, B).input
  let
    d = (@[0] & (0 ..< N).mapIt(A[it] - B[it]).sorted(Descending)).cumsummed
    s = A.sum
    m = A.min
  echo:
    minOf(i, 0 .. N):
      s - d[i] + m * max(0, N - (N - i) * 2)
