include "template.nim"
let S=Seq[5:string.input.toSeq]
var
  a=5
  ad,adr=5
for i in 0..<5:
  if S[i][i]=='o': ad-=1
  if S[i][4-i]=='o': adr-=1
  var ah,aw=5
  for j in 0..<5:
    if S[i][j]=='o': aw-=1
    if S[j][i]=='o': ah-=1
  a.chMin(min(ah,aw))
a.chMin(min(ad,adr))
echo a