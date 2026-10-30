include "template.nim"
let N=int.input
var a=0
for i in 3..19:
  block bd:
    for d in 1..N:
      var p=1
      block bai:
        for ai in (d..<d*i,d):
          if p<=N.ceilDiv ai: p*=ai
          elif ai==d: break bd
          else: break bai
        var
          l=1
          r=N
        while r-l>1:
          let m=(l+r) div 2
          var f=true
          for j in 1..i:
            if pi*m>N: 
            else: f=false; break
          
          
          if p*m^i<=N: l=m
          else: r=m
        a+=l
echo a