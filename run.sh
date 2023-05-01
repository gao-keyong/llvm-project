cd build
clang sum.c -O0 -S -emit-llvm -o sum.ll -fno-discard-value-names -Xclang -disable-O0-optnone
bin/opt lib/LLVMOurMem2Reg.so -enable-new-pm=0 -ourmem2reg -S sum.ll -o sum-ourmem2reg.ll