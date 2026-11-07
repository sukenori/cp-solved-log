include "template.nim"
let N, M, K = int.input
var g = Seq[N: seq[int]]
loop M:
  let U, V = int.input - 1
  g[U].add(V)
  g[V].add(U)
import atcoder/modint
type mint = modint998244353
var dp = Seq[K + 1, N: 0.mint]
dp[0][0] = 1.mint
for i in 1 .. K:
  let s = dp[i - 1].sum
  for j in 0 ..< N:
    dp[i][j] = s - dp[i - 1][j]
    for k in g[j]:
      dp[i][j] -= dp[i - 1][k]
echo dp[K][0]
