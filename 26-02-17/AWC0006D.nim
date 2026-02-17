# https://atcoder.jp/contests/awc0006/tasks/awc0006_d
# （誤答）
# つながる限り貪欲にRが大きなものを選択するとよいだろうが、二分探索でもないし、それを実装する手が浮かばない
# dp[i番目の警備員][警備が行き届く一番右の区画]=人数か
# グラフ的に、i番目の警備員とj番目の警備員が接続する、そこを探索するみたいな解決はないか → TLE
# include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
# let N,M=int.input
# var g=Seq[M:tuple[L,R:int]]
# for i in 0..<M:
#   let L,R=int.input
#   g[i]=(L,R+1)
# g.add((0,1)); g.add((N+1,N+2)); g.sort
# var
#   q=[0].toDeque
#   d=0.repeat(M+2)
# while q.len>0:
#   let u=q.popFirst
#   for v in g.lowerBound((g[u].L,0))..<g.lowerBound((g[u].R+1,0)):
#     if v==M+1: echo d[u]; quit(0)
#     if v>0 and d[v]==0:
#       d[v]=d[u]+1
#       q.addLast(v)
# echo -1

# （正答）
# 典型的な貪欲、区間被覆問題
# (L,R)をソート、R=0とし、そこまでのLをチェックして、その間の最大のRを記録、それを次のRにして1カウントアップ、を繰り返す
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var g=Seq[M:tuple[L,R:int]]
for i in 0..<M:
  let L,R=int.input
  g[i]=(L,R)
g.sort
var i,R,a=0
while R<N:
  var nR=R
  while i<M and g[i].L<=R+1:
    nR.chMax(g[i].R); i+=1
  if (i==M and nR<N) or (i<M and g[i].L>nR+1): echo -1; quit(0)
  else: R=nR; a+=1
echo a