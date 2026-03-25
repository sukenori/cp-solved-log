# https://atcoder.jp/contests/awc0004/tasks/awc0004_e
# Aに負が許されるので、尺取りはできない
# 馬鹿なことに全項10^9を足せばよいなどと考え実装するも、Kが定まらないことに気付く
# 転倒数のカウントのように、順次そこまでの〇〇を計算しておいて、のようなアプローチはどうか
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/.Template/Treap.nim"
let
  N, K = int.input
  A = (@[0] & Seq[N: int.input]).cumsummed.toMultiSet
dump A.toSeq
var a = 0
for Ai in A:
  dump Ai
  a += A.count(Ai + K)
echo a
