include "template.nim"
when defined(gen):
  flush(5):
    let
      N = 10
      S = randString[N: 'o', 'x']
    emit(N)
    emit(S)
elif defined(naive):
  let
    N = int.input
    S = string.input
  for k in 0 ..< N:
    var
      a = k
      p = S[0 .. a].count('o')
    while a < N - 1 and p > 0:
      p -= 1
      a += 1
      if S[a] == 'o':
        p += 1
    echo a + 1
else:
  let
    N = int.input
    S = string.input
  var a = 0
  for i in 1 .. N:
    if a < N:
      a += 1
    while a < N and S[a - 1] == 'o':
      a += 1
    echo a
