include "template.nim"
let
  N = int.input
  A, B = Seq[N: int.input]
for i in 0 ..< N:
  if A[i] > B[i]:
    echo "Yes"
    echo (0 ..< N)
      .mapIt(
        if it == i:
          10 ^ 18
        else:
          1
      )
      .join(" ")
    quit()
echo"No"
