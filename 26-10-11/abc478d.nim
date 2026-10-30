include "template.nim"
let N,Q=int.input
var q=Seq[Q:(int,int,int)]
for i in 0..<Q:
  let L,R,X=int.input
  q[i]=(X,L-1,R-1)
var
  d=q.sorted.toDeque
  a=Seq[N+1:0]
while d.len>0:
  var (X,L,R)=d.popFirst
  while d.len>0 and X==d.peekFirst[0] and d.peekFirst[1]<=R:
      R.chMax(d.popFirst[2])
  a[L]+=1; a[R+1]-=1
echo a.cumsummed[0..<N].join(" ")