include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, K = int.input
var A, B = Seq[N: int]
(A, B).input
echo (0 ..< N).countIt(A[it] * B[it] >= K)
