include "template.nim"
let N = int.input
for i in 1 .. N:
  if i mod 3 == 0:
    echo "Fizz"
  else:
    echo i
