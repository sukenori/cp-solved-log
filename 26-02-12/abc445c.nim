include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N = int.input
var A = Seq[N: int.input]
for i in (N - 1 .. 0, 1):
  A[i] = A[A[i] - 1]
echo A.join(" ")
