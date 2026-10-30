include "template.nim"
let Q=int.input
var
  t:Table[string,int]
  i=1
loop Q:
  let s=string.input
  if not t.hasKey(s): t[s]=i; i+=1
  echo t[s]