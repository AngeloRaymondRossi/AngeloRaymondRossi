%mem=12mw
# SAC-CI(Singlet=(NState=(0,1)),macro=2,
        TargetState=(SpinState=Singlet,Symmetry=2,Root=1))
       /D95(d) Opt test

Gaussian Test Job 651 (Part 1):
SAC-CI SD-R geometry optimization for the singlet excited A" state of
HCHO with D95(d) basis. MOD method is used and all the SCF MOs are
included in the active space. MacroIteration = 1.
Initial geometry is the experimental one (Cs).
The results are compared with the experimental values in Part I-L of
the SAC-CI Guide.

  0  1
O
C 1 OC
X 2 CX 1 XCO
H 2 HC 3 HCX 1 HCXO
H 2 HC 3 HCX 4 HCXH
Variables:
OC = 1.321
HC = 1.097
CX = 1.0
XCO = 148.25
HCX = 59.3
HCXO = 90.0
HCXH =180.0

--Link1--
%mem=12mw
# SAC-CI(Triplet=(NState=(0,1)),macro=3,
        TargetState=(SpinState=Triplet,Symmetry=2,Root=1))
       /D95(d) Opt test

Gaussian Test Job 651 (Part 2):
SAC-CI SD-R geometry optimization calculation for the triplet excited
A" state of HCHO with full-active MOs of D95(d) basis.
Initial geometry is the experimental one (Cs).

  0  1
O
C 1 OC
X 2 CX 1 XCO
H 2 HC 3 HCX 1 HCXO
H 2 HC 3 HCX 4 HCXH
Variables:
OC = 1.28
HC = 1.10
CX = 1.0
XCO = 142.0
HCX = 58.0
HCXO = 90.0
HCXH =180.0

--Link1--
%mem=12mw
# SAC-CI(SACOnly,TargetState=(SpinState=Singlet,Symmetry=1,Root=0))
       /D95(d) Opt test

Gaussian Test Job 651 (Part 3):
Geometry optimization of the SAC ground state of HCHO.
Initial geometry is the experimental one (C2v).

  0  1
O
C 1 OC
H 2 HC 1 HCO
H 2 HC 1 HCO 3 HCOH
Variables:
OC = 1.2031
HC = 1.1012
HCO = 121.875
HCOH =180.0

