include "template.nim"
let S=string.input
echo if S.count('o') mod 2==1: "odd" else: "even"