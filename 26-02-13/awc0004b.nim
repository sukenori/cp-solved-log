include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, T = int.input
echo:
  sumOf(_, 0 ..< N):
    let A, B = int.input
    max(A - B * T, 0)
