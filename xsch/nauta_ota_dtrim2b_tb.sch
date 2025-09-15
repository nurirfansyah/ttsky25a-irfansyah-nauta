v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -410 30 -410 50 {lab=GND}
N -140 50 90 50 {lab=GND}
N -80 50 -80 70 {lab=GND}
N -40 30 -40 50 {lab=GND}
N -410 -150 -410 -30 {lab=#net1}
N 20 -60 20 -30 {lab=#net2}
N -40 -40 20 -40 {lab=#net2}
N -40 -40 -40 -30 {lab=#net2}
N 20 -130 20 -110 {lab=in_p}
N 20 30 20 40 {lab=in_n}
N 20 40 80 40 {lab=in_n}
N 80 -50 80 40 {lab=in_n}
N 540 -70 540 -50 {lab=out_p}
N 630 -90 630 -50 {lab=out_n}
N 90 50 630 50 {lab=GND}
N 630 10 630 50 {lab=GND}
N 540 10 540 50 {lab=GND}
N 120 10 120 50 {lab=GND}
N 120 10 130 10 {lab=GND}
N -410 50 -140 50 {lab=GND}
N -290 10 -290 50 {lab=GND}
N -240 10 -240 50 {lab=GND}
N 630 -210 630 -90 {lab=out_n}
N 540 -190 540 -70 {lab=out_p}
N 450 -210 540 -210 {lab=#net3}
N 600 -210 630 -210 {lab=out_n}
N 520 -190 540 -190 {lab=out_p}
N 450 -190 460 -190 {lab=#net4}
N -410 -210 150 -210 {lab=#net1}
N -410 -210 -410 -150 {lab=#net1}
N 130 10 150 10 {lab=GND}
N 130 -190 150 -190 {lab=in_p}
N 20 -190 130 -190 {lab=in_p}
N 20 -190 20 -130 {lab=in_p}
N 80 -170 80 -50 {lab=in_n}
N 80 -170 130 -170 {lab=in_n}
N 130 -170 150 -170 {lab=in_n}
N 100 -150 150 -150 {lab=#net5}
N 100 -130 150 -130 {lab=#net5}
N 100 -90 150 -90 {lab=#net5}
N 100 -150 100 -90 {lab=#net5}
N -290 -150 100 -150 {lab=#net5}
N -290 -150 -290 -50 {lab=#net5}
N 110 -70 150 -70 {lab=#net6}
N 110 -50 150 -50 {lab=#net6}
N 110 -30 150 -30 {lab=#net6}
N 110 -70 110 -10 {lab=#net6}
N 110 -280 110 -70 {lab=#net6}
N -240 -280 -240 -50 {lab=#net6}
N -240 -280 110 -280 {lab=#net6}
N 100 -110 150 -110 {lab=#net5}
N 120 -10 150 -10 {lab=#net6}
N 110 -10 120 -10 {lab=#net6}
C {vsource.sym} -410 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -40 0 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} -80 70 0 0 {name=l1 lab=GND}
C {vsource.sym} 20 -80 0 0 {name=V3 value="dc 0 ac 0.5" savecurrent=false}
C {vsource.sym} 20 0 0 0 {name=V4 value="dc 0 ac 0.5" savecurrent=false}
C {sky130_fd_pr/corner.sym} 300 -350 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 700 -320 0 0 {name=s1 only_toplevel=false value=
".options klu
.temp 27
.save v(out_p) v(out_n) v(in_p) v(in_n)

.control
  ac dec 300 1 1e9
  let vout = v(out_p) - v(out_n)
  let vin = v(in_p) - v(in_n)
  let dbgain = db(vout/vin)
  plot db( vout/vin)
  plot (180/pi)*phase( vout/vin )
  meas ac AV0_DB  FIND dbgain AT=10
.endc

"}
C {lab_wire.sym} 630 -210 0 0 {name=p1 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 540 -190 0 0 {name=p2 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 130 -190 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 130 -170 0 0 {name=p4 sig_type=std_logic lab=in_n}
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
C {vsource.sym} -290 -20 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} -240 -20 0 0 {name=V6 value=1.8 savecurrent=false}
C {nauta_ota_dtrim2b.sym} 300 -100 0 0 {name=x1}
C {res.sym} 570 -210 3 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 490 -190 3 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
