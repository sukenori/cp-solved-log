include "template.nim"
let
  S=string.input&string.input
  a=S.find('A')
  d=S.find('D')
(a div 2==d div 2 or a mod 2==d mod 2).asYesNo