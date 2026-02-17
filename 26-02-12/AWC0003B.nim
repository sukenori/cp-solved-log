include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var L,R=Seq[N:string]; (L,R).input
echo (1..<N).countIt(R[it-1]==L[it])