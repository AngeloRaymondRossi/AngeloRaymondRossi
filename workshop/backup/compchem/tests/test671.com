%mem=12mw
# SAC-CI(Cationdoublet=(NState=1))/D95 ROHF test

Gaussian Test Job 671:
SAC-CI SD-R calculation for the doublet states of CH3 with full-
active MOs of D95. CationDoublet with ROHF MOs.
"AddElectron" is automatically set.

0 2
c
h   1   Rch
h   1   Rch   2   Ahch
h   1   Rch   2   Ahch   3   Dhchh

Rch      1.085
Ahch   120.0
Dhchh  180.0

