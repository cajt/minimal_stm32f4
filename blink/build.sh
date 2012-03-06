#!/bin/sh

rm -f *.o
rm -f main.elf

arm-none-eabi-gcc -c -o main.o -DSTM32F4XX  -I.  -std=c99 -mcpu=cortex-m4 -mthumb main.c
arm-none-eabi-gcc -c -o startup.o -DSTM32F4XX  -I.  -std=c99 -mcpu=cortex-m4 -mthumb startup.c   

#arm-none-eabi-gcc -o main.elf -mcpu=cortex-m4 -mthumb -Wl,--relax -Wl,--gc-sections -nostartfiles -Tstm32f4xx_g.ld main.o startup.o 
arm-none-eabi-gcc -o main.elf -mcpu=cortex-m4 -mthumb -nostartfiles -Tstm32f4xx_g.ld main.o startup.o 


