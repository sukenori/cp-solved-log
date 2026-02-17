# https://atcoder.jp/contests/awc0003/tasks/awc0003_e
# 貪欲は無理、制約もふまえると探索系ではないか
# NもMも15だからNをM分割する全探索かと思って実装するも、よく考えたら、Nの全順列に対して行わねばならず無理
# MのN個の重複順列なんだから、要するに15^15
# bitDPでは、とのヒントをもらうも
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,M=int.input
  W=Seq[N:int.input]
  C=Seq[M:int.input].sorted
var c:seq[seq[seq[int]]]
proc f(i,j:int;s:seq[seq[int]])=
  if i==N: c.add(s)
  else:
    if N-i>=M-j:
      var ns=s
      ns[^1].add(W[i])
      f(i+1,j,ns)
    if s[0].len>0 and j<M-1:
      f(i+1,j+1,s & @[W[i]])
f(0,0,newSeqWith(1,newSeq[int]()))
var s=(0..<c.len).mapIt(c[it].mapIt(it.sum).sorted)
dump s
for si in s:
  if (0..<M).allIt(C[it]>=si[it]): echo "Yes"; quit(0)
echo "No"