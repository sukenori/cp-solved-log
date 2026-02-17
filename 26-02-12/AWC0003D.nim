include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K,M=int.input
  A=(@[0]&Seq[N:int.input]).cumsummed
var
  r=1
  a=0
for l in 1..N:
  while r<=N and not (r-l+1>=K and A[r]-A[l-1]>=M): r+=1
  a+=N-(r-1)
echo a