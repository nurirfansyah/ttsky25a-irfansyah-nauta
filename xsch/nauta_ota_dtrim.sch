v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -410 -230 50 -230 {lab=vdd}
N 50 -230 50 -160 {lab=vdd}
N 50 -160 80 -160 {lab=vdd}
N 50 -160 50 0 {lab=vdd}
N 50 0 80 -0 {lab=vdd}
N 50 0 50 70 {lab=vdd}
N 50 70 80 70 {lab=vdd}
N 50 70 50 250 {lab=vdd}
N 50 250 90 250 {lab=vdd}
N -400 460 60 460 {lab=gnd}
N 60 290 60 350 {lab=gnd}
N 60 290 90 290 {lab=gnd}
N 60 -120 60 290 {lab=gnd}
N 60 -120 80 -120 {lab=gnd}
N 60 40 80 40 {lab=gnd}
N 60 110 80 110 {lab=gnd}
N -300 -50 -280 -50 {lab=vdd}
N -300 -230 -300 -50 {lab=vdd}
N -300 -50 -300 160 {lab=vdd}
N -300 160 -280 160 {lab=vdd}
N -310 200 -280 200 {lab=gnd}
N -310 200 -310 350 {lab=gnd}
N -310 -10 -310 200 {lab=gnd}
N -310 -10 -280 -10 {lab=gnd}
N -380 -30 -280 -30 {lab=in_p}
N -390 180 -280 180 {lab=in_n}
N 20 -50 490 -50 {lab=out_n}
N 60 -140 80 -140 {lab=out_n}
N 60 -190 60 -140 {lab=out_n}
N 60 -190 400 -190 {lab=out_n}
N 400 -190 400 -50 {lab=out_n}
N 380 -160 400 -160 {lab=out_n}
N 390 250 410 250 {lab=out_p}
N 410 160 410 250 {lab=out_p}
N 70 270 90 270 {lab=out_p}
N 70 270 70 310 {lab=out_p}
N 70 310 410 310 {lab=out_p}
N 410 250 410 310 {lab=out_p}
N 30 -50 30 20 {lab=out_n}
N 30 20 80 20 {lab=out_n}
N 30 90 30 160 {lab=out_p}
N 30 90 80 90 {lab=out_p}
N 380 -0 430 0 {lab=out_p}
N 430 0 430 160 {lab=out_p}
N 380 70 420 70 {lab=out_n}
N 420 -50 420 70 {lab=out_n}
N 490 -50 920 -50 {lab=out_n}
N 920 -50 1290 -50 {lab=out_n}
N 910 160 1280 160 {lab=out_p}
N 50 -230 470 -230 {lab=vdd}
N 470 -230 470 -210 {lab=vdd}
N 470 -210 530 -210 {lab=vdd}
N 60 460 500 460 {lab=gnd}
N 500 -130 500 350 {lab=gnd}
N 500 -130 530 -130 {lab=gnd}
N 450 -190 530 -190 {lab=out_n}
N 450 -190 450 -50 {lab=out_n}
N 830 -210 850 -210 {lab=out_p}
N 850 -210 850 160 {lab=out_p}
N 470 -210 470 210 {lab=vdd}
N 470 210 530 210 {lab=vdd}
N 510 230 530 230 {lab=out_p}
N 510 160 510 230 {lab=out_p}
N 830 210 870 210 {lab=out_n}
N 870 -50 870 210 {lab=out_n}
N 500 290 530 290 {lab=gnd}
N 500 -170 530 -170 {lab=sw_p}
N -310 350 -310 460 {lab=gnd}
N 60 350 60 460 {lab=gnd}
N 500 350 500 460 {lab=gnd}
N -400 390 440 390 {lab=sw_p}
N 440 -170 500 -170 {lab=sw_p}
N 440 -170 440 390 {lab=sw_p}
N 440 250 530 250 {lab=sw_p}
N -400 410 480 410 {lab=sw_n}
N 480 -150 530 -150 {lab=sw_n}
N 480 -150 480 410 {lab=sw_n}
N 20 160 30 160 {lab=out_p}
N 30 160 410 160 {lab=out_p}
N 410 160 430 160 {lab=out_p}
N 430 160 510 160 {lab=out_p}
N 510 160 850 160 {lab=out_p}
N 850 160 910 160 {lab=out_p}
N 480 270 530 270 {lab=sw_n}
C {ff_inv.sym} -130 -30 0 0 {name=x1}
C {ff_inv.sym} -130 180 0 0 {name=x2}
C {sc_inv.sym} 230 -140 0 0 {name=x3}
C {sc_inv.sym} 240 270 0 0 {name=x4}
C {ipin.sym} -410 -230 0 0 {name=p1 lab=vdd}
C {ipin.sym} -400 460 0 0 {name=p2 lab=gnd}
C {ipin.sym} -390 180 0 0 {name=p3 lab=in_n}
C {ipin.sym} -380 -30 0 0 {name=p4 lab=in_p}
C {opin.sym} 1290 -50 0 0 {name=p5 lab=out_n}
C {opin.sym} 1280 160 0 0 {name=p6 lab=out_p}
C {cc_inv_4.sym} 230 20 0 0 {name=x5}
C {cc_inv_4.sym} 230 90 0 0 {name=x6}
C {cc_inv_dt05.sym} 680 -170 0 0 {name=x7}
C {cc_inv_dt05.sym} 680 250 0 0 {name=x8}
C {ipin.sym} -400 390 0 0 {name=p7 lab=sw_p}
C {ipin.sym} -400 410 0 0 {name=p8 lab=sw_n}
