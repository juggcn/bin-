echo off
REM CPU 内部Flash 0x0800 0000
REM V3_Boot.hex           --- 引导程序，     地址: 0x0800 0000
REM V3_Demo.hex           --- V3演示程序，   地址: 0x0800 3000
REM Ex009-示波器.hex      --- 示波器程序，   地址: 0x0803 0000
REM uCOSDemo_0x40000.hex  --- ucGui演示程序，地址: 0x0804 0000

REM 先将HEX文件转为BIN文件

echo on

hex2bin SP505LIAP.hex
hex2bin SP505LAPP.hex

LinkBin SP505L.bin =0x10000 @0x0 SP505LIAP.bin @0x8000 SP505LAPP.bin 

pause