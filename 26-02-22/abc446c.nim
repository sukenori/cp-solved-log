include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
loop T := int.input:
  let
    N, D = int.input
    A, B = Seq[N: int.input]
  var d: Deque[int]
  for i in 0 ..< N:
    loop A[i]:
      d.addLast(i)
    loop B[i]:
      d.popFirst
    while d.len > 0 and i - d.peekFirst >= D:
      d.popFirst
  echo d.len
