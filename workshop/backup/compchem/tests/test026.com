%kjob l301 8
%chk=test026
#p rmp2/3-21g freq=numer test polar

Gaussian Test Job 26
water freq//mp2/3-21g mp2 numerical frequencies with restart

0 1
o
h 1 r
h 1 r 2 a

r .9888
a 105.1678

--Link1--
%chk=test026
%nosave
#p rmp2/3-21g freq=(numer,restart) test polar

