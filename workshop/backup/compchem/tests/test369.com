%chk=test369
#p opt=tight freq oniom(mp2/genecp:blyp/genecp/auto) test

Gaussian Test Job 369 (Part 1):
2-layer ONIOM optimization

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

c h o f 0
lp-31g
****

c h o f 0
chf

c h o 0
cep-31g**
****

c o 0
cep

c h o 0
lp-31g
****

c o
chf

--Link1--
%chk=test369
%nosave
#p freq oniom(mp2/chkbas:blyp/chkbas) test geom=allcheck guess=read

