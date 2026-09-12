include "template.nim"
let S = string.input
echo S.mapIt(if it == 'A': 'A' else: '.').join
