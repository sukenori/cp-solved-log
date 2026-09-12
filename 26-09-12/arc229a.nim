include "template.nim"
var
  X = int.input
  a = "CR".repeat(25) & "A" & "RA".repeat(24)
loop X:
  for i in 0 .. 96:
    if a[i .. i + 2] == "CRA":
      a[i .. i + 2] = "ARC"
      break
echo a
