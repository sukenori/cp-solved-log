include "Template/Template.nim"
let S, T = string.input
var i, j, a = 0
while i < S.len and j < T.len:
  if S[i] == T[j]:
    i += 1
    j += 1
  elif S[i] == 'A':
    i += 1
    a += 1
  elif T[j] == 'A':
    j += 1
    a += 1
  else:
    echo -1
    quit(0)
if i == S.len and j == T.len:
  echo a
  quit(0)
if i < S.len and S[i ..^ 1].allIt(it == 'A'):
  echo a + S.len - i
  quit(0)
if j < T.len and T[j ..^ 1].allIt(it == 'A'):
  echo a + T.len - j
  quit(0)
echo -1
