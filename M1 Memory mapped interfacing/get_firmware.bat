@echo off
del firmware.hex
pscp -p -r -C -pw . root@192.168.6.48:/root/Y2Labs/M1/AVR/EXM.hex firmware.hex
@rem pause
exit
