include "template.nim"
let
  N = int.input
  S = string.input
var a = 0
for i in 0 ..< N:
  if S[i] == 'x' and (i == 0 or (i > 0 and S[i - 1] == 'x')) and
      (i == N - 1 or (i < N - 1 and S[i + 1] == 'x')):
    a += 1
echo a
