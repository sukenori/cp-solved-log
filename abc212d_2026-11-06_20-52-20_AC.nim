include "template.nim"
let Q = int.input
var
  b: HeapQueue[int]
  d = 0
query Q:
  op 1:
    let Xi = int.input
    b.push(Xi - d)
  op 2:
    let Xi = int.input
    d += Xi
  op 3:
    echo b.pop + d
