if test -z "$1"
then
  echo "please provide source file name, without extension"
else

mkdir $1
../../bin/silice -f ../../frameworks/verilator_sdram_vga.v -o $1/vga.v $1.ice 
cd $1
verilator -Wno-PINMISSING -Wno-WIDTH -O3 -cc vga.v --top-module vga
cd obj_dir
make -f Vvga.mk
make -f Vvga.mk ../../../../frameworks/verilator/verilator_vga.o verilated.o
g++ -O3 ../../../../frameworks/verilator/verilator_vga.o verilated.o Vvga__ALL.a ../../../../frameworks/verilator/libverilator_silice.a -o ../../test_$1
cd ..
cd ..

fi
