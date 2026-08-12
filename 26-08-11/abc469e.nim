include "template.nim"
let
  N, K = int.input
  S = string.input
var
  o = S.count('o')
  l = 0
  r = N - 1
while S[l] == 'x':
  l += 1
while S[r] == 'x':
  r -= 1
var a = o / (r - l + 1)
while o > K:
  var nl = l + 1
  while S[nl] == 'x':
    nl += 1
  var nr = r - 1
  while S[nr] == 'x':
    nr -= 1
  o -= 1
  if nr - l >= r - nl:
    l = nl
  else:
    r = nr
  a.chMax(o / (r - l + 1))
echo a
