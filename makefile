gcc -c -g -Os -march=i686 -ffreestanding -Wall -Werror boot.c -o boot.o
ld -static -nostdlib --nmagic -o boot.elf boot.o
objcopy -O binary boot.elf boot.bin
