%chk=test519
#p opt freq oniom(mp2/lanl2dz:hf/lanl2mb) test

Gaussian Test Job 519:
2-layer ONIOM optimization and frequencies,
numerical and analytic

0 1 0 1
C
H,1,B1
O,1,B2,2,A1
C,1,B3,2,A2,3,180.000,0,Low,H
F,4,B4,1,A3,3,0.000,0,Low
F,4,B5,1,A4,5,W1,0,Low
F,4,B5,1,A4,5,-W1,0,Low

B1=1.1
B2=1.3
B3=1.5
B4=1.4
B5=1.4
A1=120.0
A2=120.0
A3=109.4
A4=109.5
W1=120.0

--Link1--
%chk=test519
#p polar=numer oniom(mp2/lanl2dz:hf/lanl2mb) test
geom=allcheck guess=read

--Link1--
%chk=test519
#p polar=enonly oniom(mp2/lanl2dz:hf/lanl2mb) test
geom=allcheck guess=read

--Link1--
%chk=test519
#p freq=numer polar oniom(mp2/lanl2dz:hf/lanl2mb) test
geom=allcheck guess=read

--Link1--
%chk=test519
%nosave
#p freq=enonly oniom(mp2/lanl2dz:hf/lanl2mb) test
geom=allcheck guess=read

