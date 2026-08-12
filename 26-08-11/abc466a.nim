include "template.nim"
when defined(gen):
  flush(10):
    let
      N = 15
      X = randSeq[N: -100 .. 100]
    emit(N)
    emit(X)
elif defined(naive):
  let
    N = int.input
    X = Seq[N: int.input]
  (X.allIt(it < 0)).asYesNo
else:
  let
    N = int.input
    X = Seq[N: int.input]
  (X.allIt(it < 0)).asYesNo
