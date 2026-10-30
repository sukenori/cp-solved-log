include "template.nim"
let
  N=int.input
  S,T=string.input
((0..<N).allIt(S[it]==T[it] or T[it]=='*')).asYesNo