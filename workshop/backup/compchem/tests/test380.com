#P nonstd
 1/5=18,6=1,7=11,8=3000,9=1,10=4,38=1,42=20,44=1,80=1/1,18;
 2/15=1,17=6,18=5/2;
 3/25=1,31=1/1,2,3;
 4/7=6,17=3,18=3/1,5;
 5/5=2,17=41000200,28=2,32=2,38=4,55=2,97=11/10;
 8/6=4,11=11,23=2/1;
 11/31=1,42=1,45=1/1;
 10/6=1,10=700007,28=2,29=1,31=1,55=2,80=1,97=11,99=300/3;
 6/7=3,18=1,28=1/1;
 7/10=1,25=1,30=1/1,2,3,16;
 1/5=18,6=1,7=11,8=3000,9=1,10=4,42=20,44=1,80=1/18(3);
 3/25=1,31=1,39=1/1,3;
 7/8=0,9=1,25=1,30=1,44=-1/16;
 99//99;
 3/25=1,31=1/1,2,3;
 4/5=5,7=6,16=2,17=3,18=3/1;
 5/5=2,17=41000200,23=1,28=2,32=2,38=4,55=2,97=11/10;
 8/6=4,11=11,23=2/1;
 11/31=1,42=1,45=1/1;
 10/6=1,10=700007,28=2,29=1,31=1,55=2,80=1,97=11,99=300/3(-3);
 7/10=1,25=1,30=1/1,2,3,16;
 1/5=18,6=1,7=11,8=3000,9=1,10=4,42=20,44=1,80=1/18(-7);
 3/25=1,31=1,39=1/1,3;
 6/7=3,18=1,19=2,28=1/1;
 7/8=0,9=1,25=1,30=1,44=-1/16;
 99//99;

Gaussian Test Job 380:
Partly SA trajectory that hops by following the CI vector.
_
#P cas(3,3,nroot=2)/sto-3g test 
opt=(calcall,z-matrix) nosym
pop=full scf=tight 
extralinks=l118 
iop(5/17=41000200,10/10=700007)
iop(1/5=18,1/6=1,1/7=11,1/8=300,1/9=1,1/42=20,1/44=1)
iop(5/55=2,10/55=2)
iop(5/97=11,10/97=11)
iop(10/98=300)
_
remove 103 calls, all but first 202, (-8)->(-7), (4)->(3),
(-3) l1003
_
IMPORTANT: the sign in '1 -0.1' may have to be changed to
reproduce this job.

0 2
6            .000189     .000560     .000106
6           -.000059     .000424    1.493652
6           1.279348     .000427    -.770888
1           -.898380     .328383    -.507562
1            .891818    -.335743    2.007394
1           -.598999     .735848    2.018408
1           1.419727     .735853   -1.554717
1           2.179666    -.335744    -.272087

0
1 -0.1

