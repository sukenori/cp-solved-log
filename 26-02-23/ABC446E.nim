#https://atcoder.jp/contests/abc446/tasks/abc446_e
#無限長の数列、ということは、(s1,s2)→(s2,s3)という遷移は、いずれ循環するということ
#全頂点のパスを解析して、座標に0が含まれるものを除く、と考えるも実装に迷い
#循環で打ち切るならUnion-Findが楽、それなら座標に0が絡むものをひとまとまりにして、余事象を答えればいい
#解析開始の座標は(1..<M,1..<M)でよい
include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let M,A,B=int.input
import atcoder/dsu
var d=initDSU(M*M)
for i in 1..<M:
  d.merge(0,i); d.merge(0,i*M)
for i,j in perms(1..<M,1..<M):
  var (s1,s2)=(i,j)
  while true:
    let s3=(A*s2+B*s1) mod M
    if d.same(s1*M+s2,s2*M+s3): break
    else:
      d.merge(s1*M+s2,s2*M+s3)
      s1=s2; s2=s3
echo M*M-d.size(d.leader(0))