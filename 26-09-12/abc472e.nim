include "template.nim"
let T = int.input
loop T:
  block b:
    let N, M = int.input
    var g = Seq[N: seq[int]]
    loop M:
      let a, b = int.input - 1
      g[a].add(b)
      g[b].add(a)
    var
      q = [0].toDeque
      f, p = Seq[N: -1]
    f[0] = 0
    while q.len > 0:
      let u = q.popFirst
      for v in g[u]:
        if f[v] == -1:
          f[v] = 1 - f[u]
          p[v] = u
          q.addLast(v)
        elif u > 0 and v > 0 and f[u] + f[v] != 1:
          var
            u = u
            v = v
            a = [u, v].toDeque
          while true:
            a.addFirst(p[u])
            u = p[u]
            if p[v] == u:
              echo a.len
              echo a.toSeq.mapIt(it + 1).join(" ")
              break b
            else:
              a.addLast(p[v])
              v = p[v]
    echo -1
