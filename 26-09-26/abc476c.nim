include "template.nim"
let
  N=int.input
  A=Seq[N:int.input]
var a=A[0..2].sorted(Descending)
echo a[2]
for i in 3..<N:
  a.add(A[i])
  for j in (2..0,1):
    if a[j]<a[j+1]: swap(a[j],a[j+1])
  echo a[2]
  discard a.pop