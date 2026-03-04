include "Template/Template.nim"
let
  S=string.input
  c=S.toCountTable
  m=c.values.toSeq.max
echo (0..<S.len).filterIt(c[S[it]]!=m).mapIt(S[it]).join
