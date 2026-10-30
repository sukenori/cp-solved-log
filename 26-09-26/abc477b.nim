include "template.nim"
let
  N,D=int.input
  X=Seq[N:int.input]
var a:seq[int]
for i in 0..<N:
  var f=true
  for j in 0..<N:
    if i!=j and abs(X[j]-X[i])<D: f=false
  if f: a.add(i+1)
echo a.len
echo a.join(" ")