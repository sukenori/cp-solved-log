#https://atcoder.jp/contests/abc445/tasks/abc445_e
#（他力）
#全Aiを因数分解、その際に、Aiが抜けたときの状態が答えられるように準備しておく
#因数分解をTableにして最小公倍数もTableにするにあたって、各指数をHeapQueueでもっておけばよい
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
import atcoder/extra/math/eratosthenes
var e = initEratosthenes(10 ^ 7)
include "/workspaces/AtCoder-Nim/.Library/.Template/Modint.nim"
initMod998244353
loop T := int.input:
  let
    N = int.input
    A = Seq[N: int.input]
  var
    f = Seq[N: Table[int, int]]
    m: Table[int, HeapQueue[int]]
  for i in 0 ..< N:
    for (k, v) in e.factor(A[i]):
      f[i][k] = v
      if m.hasKey(k):
        m[k].push(-v)
      else:
        m[k] = [-v, 0].toHeapQueue
  var lcm = 1.mint
  for k, v in m:
    lcm *= k.mint.pow(-v[0])
  var a = Seq[N: lcm]
  for i in 0 ..< N:
    for k, v in f[i]:
      if m[k][0] == -v:
        var jv = m[k]
        discard jv.pop
        a[i] = a[i] / k.mint.pow(-m[k][0]) * k.mint.pow(-jv[0])
  echo a.join(" ")
