include "template.nim"
when defined(gen):
  flush(10):
    let
      N = rand(2 .. 10)
      M = rand(1 .. 10)
    emit(N, M)
    loop M:
      let
        A = rand(1 ..< N)
        B = rand(A <.. N)
      emit(A, B)
elif defined(naive):
  let N, M = int.input
  var A, B = Seq[M: int]
  (A, B).input
  var a = 0
  for Ai in 1 ..< N:
    for Bi in Ai <.. N:
      var f = true
      for i in 0 ..< M:
        if Ai notin [A[i], B[i]] and Bi notin [A[i], B[i]]:
          f = false
      if f: a += 1
  echo a
else:
  let N, M = int.input
  var
    m = 0
    c = Seq[N: 0]
    p: HashSet[(int, int)]
  loop M:
    let A, B = int.input - 1
    if (A, B) notin p:
      c[A] += 1
      c[B] += 1
      p.incl((A, B))
      m += 1
  var s = Seq[m + 1: HashSet[int]]
  for i in 0 ..< N:
    s[c[i]].incl(i)
  var a = 0
  for i in 0 ..< N:
    for sj in s[m - c[i]]:
      if sj != i and (min(i, sj), max(i, sj)) notin p:
        a += 1
    if c[i] > 0:
      for sj in s[m - c[i] + 1]:
        if sj != i and (min(i, sj), max(i, sj)) in p:
          a += 1
  echo a div 2
