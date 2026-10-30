include "template.nim"
let N,W=int.input
var A,B=Seq[N:int]; (A,B).input
var a=0
for i in 0..<1 shl N:
  var
    w=0
    ai=0
  for j in 0..<N:
    if (i shr j and 1)==1: w+=B[j]; ai+=A[j]
  if w<=W: a.chMax(ai)
echo a