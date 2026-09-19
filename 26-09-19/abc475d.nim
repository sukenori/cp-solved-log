include "template.nim"
import atcoder/extra/math/eratosthenes
let p=initEratosthenes(10000000).prime
let S=string.input
for pi in p:
  block b:
    let s = $pi
    if s.len!=S.len: break b
    var
      c:Table[char,char]
      n:Table[char,char]
    for i,Si in S:
      if not c.hasKey(Si):
        if not n.hasKey(s[i]):
          c[Si]=s[i]; n[s[i]]=Si
        else:
          if n[s[i]]!=Si: break b
      else:
        if c[Si]!=s[i]: break b
    echo pi; quit()
echo -1