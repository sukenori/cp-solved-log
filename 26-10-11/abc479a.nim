include "template.nim"
let
  N=int.input
  A=Seq[N:int.input]
echo (0..<N).filterIt((it+1) mod 2==1).mapIt(A[it]).sum