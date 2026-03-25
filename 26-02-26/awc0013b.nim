include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, M = int.input
var f = Seq[M: (int, int)]
for i in 0 ..< M:
  let A, B = int.input
  f[i] = (min(A, B), max(A, B))
echo f.toCountTable.values.toSeq.filterIt(it == 2).len
