include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,K=int.input
var W=Seq[N:HashSet[string]]
for i in 0..<N:
  let M=int.input
  W[i]=Seq[M:string.input].toHashSet
var a=0
for i,j in combs(N,2):
  if (W[i]*W[j]).len>=K: a+=1
echo a