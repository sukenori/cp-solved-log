include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
var s,a:int
for i in 0..<N:
  if (A[i] or K)==K:
    s=s or A[i]
    a+=1
echo if a>0 and s==K: a else: -1