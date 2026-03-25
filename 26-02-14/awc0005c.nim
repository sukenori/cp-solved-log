include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, K = int.input
if N == 1:
  echo 0
  quit(0)
var
  A = Seq[N: int.input]
  a = 0
for i in 1 ..< N:
  if A[i - 1] - A[i] > K:
    let ai = A[i - 1] - (A[i] + K)
    A[i] += ai
    a += ai
for i in (N - 2 .. 0, 1):
  if A[i + 1] - A[i] > K:
    let ai = A[i + 1] - (A[i] + K)
    A[i] += ai
    a += ai
echo a
