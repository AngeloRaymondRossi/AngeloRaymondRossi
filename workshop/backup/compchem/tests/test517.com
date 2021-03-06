%chk=test517
#p HF/6-311+G(2d,2p) freq=vibrot scf(conver=12) test

Gaussian Test Job 517 (Part 1):
Water frequencies with vib-rot coupling analysis

0 1
 H,0,0.,0.752112,-0.4508912
 O,0,0.,0.,0.1127228
 H,0,0.,-0.752112,-0.4508912

--Link1--
%chk=test517
#p HF/6-311+G(2d,2p) freq=(readfc,vibrot) geom=allcheck test

--Link1--
%chk=test517
%kjob l301 5
#p HF/6-311+G(2d,2p) freq=(vibrot,anharm) scf(conver=12) test

Gaussian Test Job 517 (Part 3):
Anharmonic frequencies on water

0 1
 H,0,0.,0.752112,-0.4508912
 O,0,0.,0.,0.1127228
 H,0,0.,-0.752112,-0.4508912

--Link1--
%chk=test517
%nosave
#p HF/6-311+G(2d,2p) freq=(vibrot,anharm,restart) scf(conver=12)
test

Gaussian Test Job 517 (Part 4):
Anharmonic frequencies on water, restart

0 1
 H,0,0.,0.752112,-0.4508912
 O,0,0.,0.,0.1127228
 H,0,0.,-0.752112,-0.4508912

