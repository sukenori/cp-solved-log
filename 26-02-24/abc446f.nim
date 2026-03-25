#https://atcoder.jp/contests/abc446/tasks/abc446_f
#トポロジカルソートを考えるが、閉路がないとも限らない、それを合理的に解消するのは難しそう
#単に頂点1からBFSしておくことで、1からの距離と頂点リストで答えられないか
#いや、挙動を細かく考えると、0..<Nのiで、iまでの頂点について、頂点リストで探索、余分な頂点数が答え、そこまでに0..iが出揃っていなければ-1ではないか
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N, M = int.input
var g = Seq[N: seq[int]]
for _ in 1 .. M:
  let U, V = int.input - 1
  g[U].add(V)
#（誤答）
#頂点単位で進め、範囲内到達頂点と範囲外到達頂点の集合で管理しようとして実装を試みた
#include "/workspaces/AtCoder-Nim/.Library/.Template/Treap.nim"
#var
#  d=[0].toSet
#  t=g[0].toSet
#for i in 0..<N:
#  var nt=t
#  for jt in t:
#    if jt<=i:
#      d.incl(jt)
#      for kg in g[jt]:
#        if kg>i: nt.incl(kg)
#        if kg<=i: d.incl(kg)
#      nt.excl(jt)
#    else: break
#  t=nt
#  echo if d.len==i+1: t.len else: -1

#（正答）
#BFS風にHeapQueue qに次の頂点を格納し、0..<Nのiまでなら進め、進めなくなったらq.lenを答える
#qから取り出した回数も数えておき、i+1より少なければ-1を答える
var
  i, s = 0
  q = [0].toHeapQueue
  d = false.repeat(N)
d[0] = true
while true:
  if q.len > 0 and q[0] <= i:
    let u = q.pop
    s += 1
    for v in g[u]:
      if not d[v]:
        d[v] = true
        q.push(v)
  else:
    if i < N:
      echo if s == i + 1: q.len else: -1
      i += 1
    else:
      break
