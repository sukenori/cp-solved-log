include "template.nim"
let
  N=int.input
  A=Seq[N:int.input]
var a=Seq[3:int]
for i in 0..<N:
  let r=100000-A[i]
  a[0]+=r mod 10
  a[1]+=r mod 100 div 10
  a[2]+=r mod 1000 div 100
echo a.join(" ")