%chk=test429
# hf/6-31g* freq test

Gaussian Test Job 429 (Part 1):
Cl-CH3-Cl ts freq

-1 1
C
Cl 1 rccl1
X 1 1. 2 90.
Cl 1 rccl2 3 90. 2 180. 
H 1 rch 2 ahccl1 3 180. 
H 1 rch 2 ahccl1 3 -60. 
H 1 rch 2 ahccl1 3 60. 

rccl1=2.3830445
rccl2=2.3830445
rch=1.06125269
ahccl1=90.

--Link1--
%chk=test429
#p NonStd
1/7=0,10=5,14=100,22=1,29=120002,38=1,39=1,42=8,44=3,54=1/1,15;
2/12=2,15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=1/1;
5/5=2/2;
6/7=2,8=2,9=2,10=2,28=1/1;
7//1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15;
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
7//1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15(-5);
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,30=1,39=0,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1,45=2/1,2,3,16;
1/10=4,14=100,22=1,30=1,39=1,42=8,44=3,54=1/15(-14);
7/8=1,10=1,25=11,45=2/16;
1/10=4,14=100,22=1,30=0,42=8,44=3,54=1/15(-16);
6/7=2,8=2,9=2,10=2,18=1,28=1/1;
99/9=1/99;

Gaussian Test Job 429 (Part 2):
Cl-CH3-Cl irc + projected frequency calculation 
HF/6-31G* irc=(rcfc,projfreq,tang=disp) geom=checkpoint

-1 1

--Link1--
%chk=test429
#p NonStd
1/7=0,10=4,14=100,22=1,29=120000,38=1,39=1,42=8,44=3,54=1/1,15;
2/12=2,15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=1/1;
5/5=2/2;
6/7=2,8=2,9=2,10=2,28=1/1;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1/1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15;
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
7//1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15(-5);
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,30=1,39=0,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1,45=1/1,2,3,16;
1/10=4,14=100,22=1,30=1,39=1,42=8,44=3,54=1/15(-14);
7/8=1,10=1,25=11,45=1/16;
1/10=4,14=100,22=1,30=0,42=8,44=3,54=1/15(-16);
6/7=2,8=2,9=2,10=2,18=1,28=1/1;
99/9=1/99;

Gaussian Test Job 429 (Part 3):
Cl-CH3-Cl irc +projected freq calculation
HF/6-31G* irc=(calcfc,projfreq,tang=grad) 

-1 1
C
Cl 1 rccl1
X 1 1. 2 90.
Cl 1 rccl2 3 90. 2 180. 
H 1 rch 2 ahccl1 3 180. 
H 1 rch 2 ahccl1 3 -60. 
H 1 rch 2 ahccl1 3 60. 

rccl1=2.3830445
rccl2=2.3830445
rch=1.06125269
ahccl1=90.

--Link1--
%chk=test429
%kjob l301 5
#p NonStd
1/7=0,10=4,14=100,22=1,29=120000,38=1,39=1,42=8,44=3,54=1/1,15;
2/12=2,15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4//1;
5/5=2/2;
6/7=2,8=2,9=2,10=2,28=1/1;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1/1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15;
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
7//1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15(-5);
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,30=1,39=0,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1,45=1/1,2,3,16;
1/10=4,14=100,22=1,30=1,39=1,42=8,44=3,54=1/15(-14);
7/8=1,10=1,25=11,45=1/16;
1/10=4,14=100,22=1,30=0,42=8,44=3,54=1/15(-16);
6/7=2,8=2,9=2,10=2,18=1,28=1/1;
99/9=1/99;

Gaussian Test Job 429 (Part 4):
Cl-CH3-Cl irc + projected frequency %KJob for restart 

-1 1
C
Cl 1 rccl1
X 1 1. 2 90.
Cl 1 rccl2 3 90. 2 180. 
H 1 rch 2 ahccl1 3 180. 
H 1 rch 2 ahccl1 3 -60. 
H 1 rch 2 ahccl1 3 60. 

rccl1=2.3830445
rccl2=2.3830445
rch=1.06125269
ahccl1=90.

--Link1--
%chk=test429
%nosave
#p NonStd
1/7=0,10=7,14=100,22=1,30=1,35=1,39=1,42=8,44=3,54=1/15(1);
2/15=1,29=3/2(7);
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,25=20,30=1,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
7//1,2,3,16;
1/22=1,14=100,30=1,39=1,42=8,44=3,54=1/15(-5);
2/15=1,29=3/2;
3/5=1,6=6,7=1,11=9,30=1,39=0,31=1/1,2,3;
4/5=5,16=2/1;
5/5=2/2;
8/6=4,11=10/1;
11/6=1,8=1,9=11,15=111,16=11/1,2,10;
10/6=1,9=1/2;
7/10=1,25=1,45=1/1,2,3,16;
1/10=4,14=100,22=1,30=1,39=1,42=8,44=3,54=1/15(-14);
7/8=1,10=1,25=11,45=1/16;
1/10=4,14=100,22=1,30=0,42=8,44=3,54=1/15(-16);
6/7=2,8=2,9=2,10=2,18=1,28=1/1;
99/9=1/99;

Gaussian Test Job 429 (Part 5):
Cl-CH3-Cl irc + projected frequency restart 
HFo/6-31G* irc=(restart,projfreq,tang=grad,verytight) geom=checkpoint

-1 1

