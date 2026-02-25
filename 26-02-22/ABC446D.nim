#https://atcoder.jp/contests/abc446/tasks/abc446_d
#どう見てもdp、前から見ていき、最後の数字とそれまでの長さをとっておけばよい
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A=Seq[N:int.input]
var c:Table[int,int]
for Ai in A:
  if c.hasKey(Ai-1): c[Ai]=c[Ai-1]+1
  else: c[Ai]=1
echo c.values.toSeq.max