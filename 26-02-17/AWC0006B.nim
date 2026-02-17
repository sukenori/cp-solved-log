include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,K,T=int.input
var D,R=Seq[N:int]; (D,R).input
((0..<N).filterIt(R[it]>=K*D[it]).mapIt(R[it]).sum>=T).asYesNo