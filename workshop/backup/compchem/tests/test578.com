%chk=test578
%mem=32mw
#p oniom(b3lyp/6-31g**:blyp/6-31g**/dga1) force test 5d

Gaussian Test Job 578 (Part 1):
Neopentane 

3,4
  H   -1.015974970285      0.000000000000      1.932321304070 M
  C   -0.730422448785      1.265128792284     -0.516486666667 M H
  C    0.000000000000      0.000000000000      0.000000000000 H
  H    0.507987485143      0.879860133876      1.932321304070 M
  C    0.000000000000      0.000000000000      1.549460000000 M H
  H    1.483151673291      0.000000000000     -1.601977489363 M
  H    1.991139158433      0.879860133876     -0.165171907354 M
  C    1.460844897570      0.000000000000     -0.516486666667 M H
  H    0.507987485143     -0.879860133876      1.932321304070 M
  H    1.991139158433     -0.879860133876     -0.165171907354 M
  H   -0.741575836645     -1.284447026735     -1.601977489363 M
  C   -0.730422448785     -1.265128792284     -0.516486666667 M H
  H   -1.757550806930     -1.284447026735     -0.165171907354 M
  H   -0.233588351503     -2.164307160611     -0.165171907354 M
  H   -0.741575836645      1.284447026735     -1.601977489363 M
  H   -1.757550806930      1.284447026735     -0.165171907354 M
  H   -0.233588351503      2.164307160611     -0.165171907354 M

--Link1--
%mem=32mw
%chk=test578
#p oniom(b3lyp/6-31g**:blyp/6-31g**/dga1)=compress freq test geom=check guess=read 5d

Gaussian Test Job 578 (Part 2):
Neopentane 

3,4

--Link1--
%mem=32mw
%chk=test578
#p oniom(b3lyp/6-31g**:blyp/6-31g**/dga1)=compress freq test geom=check guess=read 5d iop(11/43=4)

Gaussian Test Job 578 (Part 3):
Neopentane 

3,4

--Link1--
%mem=32mw
%chk=test578
%nosave
#p oniom(b3lyp/6-31g**:blyp/6-31g**/dga1)=nocompress freq test geom=check guess=read 5d

Gaussian Test Job 578 (Part 4):
Neopentane 

3,4

