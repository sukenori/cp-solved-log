include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N = int.input
  H = Seq[N: int.input]
if H.max < 0:
  echo -H.min * 2
elif H.min < 0:
  echo (H.max - H.min) * 2
else:
  echo H.max * 2
