%chk=test367
#p uhf/6-31g* 5d units=au force test

Gaussian Test Job 367 (Part 1):
Benzene using regular integrals

0,5
c   2.68000000000000       .00000000000000       .00000000000000              
c   1.34000000000000      2.32094808214230       .00000000000000              
c  -1.34000000000000      2.32094808214230       .00000000000000              
c  -2.68000000000000       .00000000000000       .00000000000000              
c  -1.34000000000000     -2.32094808214230       .00000000000000              
c   1.34000000000000     -2.32094808214230       .00000000000000              
h   4.72000000000000       .00000000000000       .00000000000000              
h   2.36000000000000      4.08763990586255       .00000000000000              
h  -2.36000000000000      4.08763990586255       .00000000000000              
h  -4.72000000000000       .00000000000000       .00000000000000              
h  -2.36000000000000     -4.08763990586255       .00000000000000              
h   2.36000000000000     -4.08763990586255       .00000000000000              

--Link1--
%chk=test367
#p uhf/6-31g* 5d units=au force test fmm=(levels=5) geom=check 

Gaussian Test Job 367 (Part 2):
Benzene using FMM full NFx

0,5

--Link1--
%chk=test367
%nosave
#p uhf/6-31g* 5d units=au force test fmm geom=check 

Gaussian Test Job 367 (Part 3):
Benzene using FMM, NFx=1

0,5

