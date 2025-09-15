v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -120 60 -120 {lab=vdd}
N 60 -120 60 -80 {lab=vdd}
N 60 -50 90 -50 {lab=vdd}
N 90 -120 90 -50 {lab=vdd}
N 60 -120 90 -120 {lab=vdd}
N 60 80 60 110 {lab=gnd}
N -40 110 60 110 {lab=gnd}
N 60 50 90 50 {lab=gnd}
N 90 50 90 110 {lab=gnd}
N 60 110 90 110 {lab=gnd}
N 0 -50 20 -50 {lab=in}
N -0 -50 0 50 {lab=in}
N 0 50 20 50 {lab=in}
N -40 0 -0 -0 {lab=in}
N 60 -20 60 20 {lab=out}
N 60 -0 140 -0 {lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 40 50 0 0 {name=M1
W=4.4
L=0.3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 40 -50 0 0 {name=M2
W=8.8
L=0.3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -40 0 0 0 {name=p1 lab=in}
C {ipin.sym} -40 -120 0 0 {name=p2 lab=vdd}
C {ipin.sym} -40 110 0 0 {name=p3 lab=gnd}
C {opin.sym} 140 0 0 0 {name=p4 lab=out}
