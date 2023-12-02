#!/bin/bash

#----------------------------------
#parte de calculos
#----------------------------------
#numLineas = numSets * asoc
#tamañoTotal = numSets * asoc * blocSize
#numSets = tamañoTotal / (asoc(=2) * blocSize)

#tamany cache dl1 i ul1
#numSets1 = 1024b(=1Kb) / 32b = 32
#numSets2 = 2048b(=2Kb) / 32b = 64
#numSets4 = 4096b(=4Kb) / 32b = 128
#numSets8 = 8192b(=8Kb) / 32b = 256
#numSets16 = 16384b(=16Kb) / 32b = 512
#numSets32 = 32768b(=32Kb) / 32b = 1024
#numSets64 = 65536b(=64Kb) / 32b = 2048

#Asociatividad
#numSets1 = 8192b(=8Kb) / 1*16b = 512
#numSets2 = 8192b(=8Kb) / 2*16b = 256
#numSets4 = 8192b(=8Kb) / 4*16b = 128
#numSets8 = 8192b(=8Kb) / 8*16b = 64
#numSets16 = 8192b(=8Kb) / 16*16b = 32
#numSets32 = 8192b(=8Kb) / 32*16b = 16
#numSets64 = 8192b(=8Kb) / 64*16b = 8

#Tamany block
#numSets1 = 8192b(=8Kb) / 2*8b = 512
#numSets2 = 8192b(=8Kb) / 2*16b = 256
#numSets4 = 8192b(=8Kb) / 2*32b = 128
#numSets8 = 8192b(=8Kb) / 2*64b = 64

#PARA TAREA4: cambiar x = 256 y condicion de fin -le 4096
#numSets = tamañoTotal / (asoc(=4) * blocSize)
#numSets1 = 32768b(=32Kb) / 128b = 256
#numSets2 = 65536b(=64Kb) / 128b = 512
#numSets4 = 131072b(=128Kb) / 128b = 1024
#numSets8 = 262144b(=256Kb) / 128b = 2048
#numSets16 = 524288b(=512Kb) / 128b = 4096

#Cache DL1 T.Total=8KB, asso=2, T.Bloc=16 i P.reemplaç=LRU

#a partir de ahora las chaches vinen definidas por:
#-cache:dl1 datosL1:numSets:16:1:l
#Tarea 13:
#numSet= 16384b(=16Kb) / (4*64)= 64
#numSet= 16384b(=16Kb) / (4*64)= 64
#numSet= 65536b(=64Kb) / (8*64)= 128
#Tarea 14:
#numSet= 8192b(=8Kb) / (4*64)= 32
#numSet= 8192b(=8Kb) / (4*64)= 32
#numSet= 32768b(=32Kb) / (8*64)= 64
#-----------------------------------------------------------
#Part a executar
#Element a incrementar
x=256
tt=32
#Path per guardar la Tarea
tarea=$HOME/Practica3/Tarea$1
echo "$HOME/Practica3/Tarea$1"

#while [ $x -le 4096 ]; 
#do
	#Nom del fitxer
	result=result_T$1
	cd $HOME/Practica3/ammp/data/ref

	echo "Part ammp de $tt"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/ammpRes/ammp_$result.txt ../../exe/ammp.exe < ammp.in > $tarea/ammpRes/tarea.out 2> $tarea/ammpRes/tarea.err

	cd $HOME/Practica3/eon/data/ref

	echo "Part eon de $tt 1 i x=$x"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/eonRes/eon_1_$result.txt ../../exe/eon.exe chair.control.cook chair.camera chair.surfaces chair.cook.ppm ppm pixels_out.cook >$tarea/eonRes/tarea_eon1.out 2>$tarea/eonRes/tarea_eon1.err
	echo "Part eon de $tt 2"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/eonRes/eon_2_$result.txt ../../exe/eon.exe chair.control.rushmeier chair.camera chair.surfaces chair.rushmeier.ppm ppm pixels_out.rushmeier >$tarea/eonRes/tarea_eon2.out 2>$tarea/eonRes/tarea_eon2.err
	echo "Part eon de $tt 3"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/eonRes/eon_3_$result.txt ../../exe/eon.exe chair.control.kajiya chair.camera chair.surfaces chair.kajiya.ppm ppm pixels_out.kajiya >$tarea/eonRes/tarea_eon3.out 2>$tarea/eonRes/tarea_eon3.err

	cd $HOME/Practica3/equake/data/ref

	echo "Part equake de $tt"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/equakeRes/equake_$result.txt ../../exe/equake.exe < inp.in > $tarea/equakeRes/tarea1.out 2> $tarea/equakeRes/tarea1.err

	cd $HOME/Practica3/gap/data/ref

	echo "Part gap de $tt"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/gapRes/gap_$result.txt ../../exe/gap.exe -l $HOME/Practica3/gap/data/all -q -m 129M < ref.in > $tarea/gapRes/tarea1.out 2> $tarea/gapRes/tarea1.err

	cd $HOME/Practica3/mesa/data/ref

	echo "Part mesa de $tt"
	sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:32:64:4:r -cache:il1 il1:32:64:4:r -cache:dl2 ul2:64:64:8:r -redir:sim $tarea/mesaRes/mesa_$result.txt ../../exe/mesa.exe -frames 1000 -meshfile mesa.in -ppmfile mesa.ppm

	#let x=x*2
	#let tt+=tt

#done
	#echo "$x i $tt"
	#result=result_T$1_$tt
	#cd $HOME/Practica3/ammp/data/ref

	#echo "Part ammp de $tt"
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:$x:$tt:2:l -cache:il1 il1:256:16:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/ammpRes/ammp_$result.txt ../../exe/ammp.exe < ammp.in > $tarea/ammpRes/tarea.out 2> $tarea/ammpRes/tarea.err

	#cd $HOME/Practica3/eon/data/ref

	#echo "Part eon de $tt tamany block $x"
	#echo "Part eon de $tt 1 "
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:256:16:2:l -cache:il1 il1:$x:$tt:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/eonRes/eon_1_$result.txt ../../exe/eon.exe chair.control.cook chair.camera chair.surfaces chair.cook.ppm ppm pixels_out.cook >$tarea/eonRes/tarea_eon1.out 2>$tarea/eonRes/tarea_eon1.err
	#echo "Part eon de $tt 1 "
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:256:16:2:l -cache:il1 il1:$x:$tt:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/eonRes/eon_2_$result.txt ../../exe/eon.exe chair.control.rushmeier chair.camera chair.surfaces chair.rushmeier.ppm ppm pixels_out.rushmeier >$tarea/eonRes/tarea_eon2.out 2>$tarea/eonRes/tarea_eon2.err
	#echo "Part eon de $tt 1 "
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:256:16:2:l -cache:il1 il1:$x:$tt:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/eonRes/eon_3_$result.txt ../../exe/eon.exe chair.control.kajiya chair.camera chair.surfaces chair.kajiya.ppm ppm pixels_out.kajiya >$tarea/eonRes/tarea_eon3.out 2>$tarea/eonRes/tarea_eon3.err

	#cd $HOME/Practica3/equake/data/ref

	#echo "Part equake de $tt"
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:$x:$tt:2:l -cache:il1 il1:256:16:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/equakeRes/equake_$result.txt ../../exe/equake.exe < inp.in > $tarea/equakeRes/tarea1.out 2> $tarea/equakeRes/tarea1.err

	#cd $HOME/Practica3/gap/data/ref

	#echo "Part gap de $tt"
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:$x:$tt:2:l -cache:il1 il1:256:16:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/gapRes/gap_$result.txt ../../exe/gap.exe -l $HOME/Practica3/gap/data/all -q -m 129M < ref.in > $tarea/gapRes/tarea1.out 2> $tarea/gapRes/tarea1.err

	#cd $HOME/Practica3/mesa/data/ref

	#echo "Part mesa de $tt"
	#sim-outorder -fastfwd 100000000 -max:inst 100000000 -cache:dl1 dl1:$x:$tt:2:l -cache:il1 il1:256:16:2:l -cache:dl2 ul2:256:128:4:l -redir:sim $tarea/mesaRes/mesa_$result.txt ../../exe/mesa.exe -frames 1000 -meshfile mesa.in -ppmfile mesa.ppm