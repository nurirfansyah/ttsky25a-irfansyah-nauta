v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 30 -140 50 {lab=GND}
N -140 50 90 50 {lab=GND}
N 90 -30 90 50 {lab=GND}
N 90 -30 130 -30 {lab=GND}
N -80 50 -80 70 {lab=GND}
N -40 30 -40 50 {lab=GND}
N -140 -150 -140 -30 {lab=#net1}
N -140 -150 90 -150 {lab=#net1}
N 90 -150 90 -90 {lab=#net1}
N 90 -90 130 -90 {lab=#net1}
N 20 -60 20 -30 {lab=#net2}
N -40 -40 20 -40 {lab=#net2}
N -40 -40 -40 -30 {lab=#net2}
N 80 -70 130 -70 {lab=in_p}
N 80 -130 80 -70 {lab=in_p}
N 20 -130 80 -130 {lab=in_p}
N 20 -130 20 -110 {lab=in_p}
N 20 30 20 40 {lab=in_n}
N 20 40 80 40 {lab=in_n}
N 80 -50 80 40 {lab=in_n}
N 80 -50 130 -50 {lab=in_n}
N 430 -90 490 -90 {lab=out_n}
N 430 -70 490 -70 {lab=out_p}
N 490 -70 540 -70 {lab=out_p}
N 540 -70 540 -50 {lab=out_p}
N 490 -90 630 -90 {lab=out_n}
N 630 -90 630 -50 {lab=out_n}
N 90 50 630 50 {lab=GND}
N 630 10 630 50 {lab=GND}
N 540 10 540 50 {lab=GND}
C {vsource.sym} -140 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -40 0 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} -80 70 0 0 {name=l1 lab=GND}
C {vsource.sym} 20 -80 0 0 {name=V3 value="dc 0 ac 0.5" savecurrent=false}
C {vsource.sym} 20 0 0 0 {name=V4 value="dc 0 ac 0.5" savecurrent=false}
C {sky130_fd_pr/corner.sym} 470 -330 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 700 -320 0 0 {name=s1 only_toplevel=false value=
".options klu
.temp 27
.param S=1
.save v(out_p) v(out_n) v(in_p) v(in_n)

.control
foreach k 4.4 4.45 4.5 4.55 4.6 4.65
  alterparam S=$k
  reset
  ac dec 300 1 1e9
  let vout = v(out_p) - v(out_n)
  let vin = v(in_p) - v(in_n)
  let dbgain = db(vout/vin)
  plot db( vout/vin)
  **plot (180/pi)*phase( vout/vin )
  meas ac AV0_DB  FIND dbgain AT=10
end
.endc

"}
C {lab_wire.sym} 490 -90 0 0 {name=p1 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 490 -70 0 0 {name=p2 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 110 -70 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 110 -50 0 0 {name=p4 sig_type=std_logic lab=in_n}
C {capa.sym} 540 -20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 630 -20 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {nauta_ota_Svar.sym} 280 -60 0 0 {name=x1}
