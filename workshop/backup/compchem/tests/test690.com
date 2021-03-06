#p b3lyp/6-31g(d) scrf=(iefpcm,read) test scf=tight

Gaussian Test Job 690 (Part 1):
cyanacetic acid in a ionic solution with Ionic strength= 0.1 M

0 1
    6         0.937841   -0.248321    0.000000
    8         2.142717   -0.115157    0.000000
    8         0.290290   -1.412747    0.000000
    6         0.000000    0.960825    0.000000
    1         0.967804   -2.149248    0.000000
    6        -1.428665    0.655290    0.000000
    1         0.241840    1.571515    0.880398
    1         0.241840    1.571515   -0.880398
    7        -2.567228    0.431811    0.000000

ionic dism=0.1

--link1--
#p b3lyp/6-31g(d) scrf=(iefpcm,read) test scf=tight

Gaussian Test Job 690 (Part 2):
cyanacetic ion in a ionic solution with Ionic strength= 0.1 M

-1 1
    6        0.911367   -0.326409    0.000000
    8        2.136795   -0.067008    0.000000
    8        0.331789   -1.436431    0.000000
    6       -0.004138    0.967042    0.000000
    6       -1.432830    0.684477    0.000000
    1        0.243425    1.573386    0.880163
    1        0.243425    1.573386   -0.880163
    7       -2.571198    0.446288    0.000000

ionic dism=0.1

--link1--
#p b3lyp/6-31g(d) scrf=(iefpcm,read) test scf=tight

Gaussian Test Job 690 (Part 3):
cyanacetic acid in a ionic solution with Ionic strength= 0.001 M

0 1
    6         0.937841   -0.248321    0.000000
    8         2.142717   -0.115157    0.000000
    8         0.290290   -1.412747    0.000000
    6         0.000000    0.960825    0.000000
    1         0.967804   -2.149248    0.000000
    6        -1.428665    0.655290    0.000000
    1         0.241840    1.571515    0.880398
    1         0.241840    1.571515   -0.880398
    7        -2.567228    0.431811    0.000000

ionic dism=0.01

--link1--
#p b3lyp/6-31g(d) scrf=(iefpcm,read) test scf=tight

Gaussian Test Job 690 (Part 4):
cyanacetic ion in a ionic solution with Ionic strength= 0.001 M

-1 1
    6        0.911367   -0.326409    0.000000
    8        2.136795   -0.067008    0.000000
    8        0.331789   -1.436431    0.000000
    6       -0.004138    0.967042    0.000000
    6       -1.432830    0.684477    0.000000
    1        0.243425    1.573386    0.880163
    1        0.243425    1.573386   -0.880163
    7       -2.571198    0.446288    0.000000

ionic dism=0.01

