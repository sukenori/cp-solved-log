include "template.nim"
let N,M=int.input
for i in 1..N:
  echo if i<=M mod N: M div N+1 else: M div N