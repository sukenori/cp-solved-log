include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,K=int.input
var p=Seq[N:(int,int,int)]
for i in 0..<N:
  let A,B=int.input
  p[i]=(A-B,A,B)
p.sort
echo p[0..<N-K].mapIt(it[1]).sum+p[^K..^1].mapIt(it[2]).sum