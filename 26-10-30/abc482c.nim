include "template.nim"
let H,W,N,Q=int.input
var R,C=Seq[N:int]; (R,C).input
R.sort; C.sort
query Q:
  op 1:
    let u,d=int.input
    echo R.upperBound(d)-R.upperBound(u-1)
  op 2:
    let l,r=int.input
    echo C.upperBound(r)-C.upperBound(l-1)
