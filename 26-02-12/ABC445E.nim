include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/.Template/Modint.nim"
include "/workspaces/AtCoder-Nim/.Library/.Template/Treap.nim"
import atcoder/extra/math/eratosthenes
initMod998244353
loop T:=int.input:
  let
    N=int.input
    A=Seq[N:int.input.mint]
  var f:Table[int,MultiSet[int]]
  for i in 0..<N:
    var
      n=A[i]
      fi:Table[int,int]
    for j in 2..n.isqrt:
      while n mod j==0:
        if fi.hasKeyOrPut(j,1): fi[j]+=1
        n=n div j
    if n>1: fi[n]=1
    for k,v in fi:
      f.mgetOrPut(k).incl(v)
