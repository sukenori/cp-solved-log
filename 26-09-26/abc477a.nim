include "template.nim"
let c=string.input
echo "BYR"[("BYR".find(c)+1) mod 3]