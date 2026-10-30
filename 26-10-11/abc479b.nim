include "template.nim"
let
  N=int.input
  S=string.input
var
  ai=0
  a=0
for i in 0..<N:
  if S[i]=='S': ai=0
  else: ai+=1
  a.chMax(ai)
echo a