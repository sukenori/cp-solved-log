include "template.nim"
var
  N,M=int.input
  P=Seq[N:int.input-1]
var o=(0..<N).toSeq.sortedByIt(P[it])
import atcoder/segtree
proc e():int=0
var
  smin=initSegTree[int](P,min,int.inf)
  smax=initSegTree[int](P,max,e)
loop M:
  var
    L,R=int.input-1
    l=smin[L..R]
    r=smax[L..R]
  P[o[l]]=r; P[o[r]]=l
  smin[o[l]]=r; smin[o[r]]=l
  smax[o[l]]=r; smax[o[r]]=l
  swap(o[l],o[r])
echo P.mapIt(it+1).join(" ")