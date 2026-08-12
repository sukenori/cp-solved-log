include "template.nim"
let N, Q = int.input
var
  A = Seq[N: 0]
  s: HashSet[int]
  a = 0
query(Q):
  op 1:
    let x = int.input - 1
    a = a xor A[x]
    A[x] += 1
    a = a xor A[x]
    s.incl(x)
  op 2:
    var ns = s
    for si in s:
      a = a xor A[si]
      A[si] -= 1
      a = a xor A[si]
      if A[si] == 0:
        ns.excl(si)
    s = ns
  echo a
