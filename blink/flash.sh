#!/bin/sh

openocd -f /usr/local/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/local/share/openocd/scripts/target/stm32f4x_stlink.cfg -c init -c "reset halt" -c "flash write_image erase $1" -c "sleep 500" -c "reset run" -c shutdown

