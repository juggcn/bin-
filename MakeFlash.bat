echo off
REM CPU �ڲ�Flash 0x0800 0000
REM V3_Boot.hex           --- ��������     ��ַ: 0x0800 0000
REM V3_Demo.hex           --- V3��ʾ����   ��ַ: 0x0800 3000
REM Ex009-ʾ����.hex      --- ʾ��������   ��ַ: 0x0803 0000
REM uCOSDemo_0x40000.hex  --- ucGui��ʾ���򣬵�ַ: 0x0804 0000

REM �Ƚ�HEX�ļ�תΪBIN�ļ�

echo on

hex2bin SP505LIAP.hex
hex2bin SP505LAPP.hex

LinkBin SP505L.bin =0x10000 @0x0 SP505LIAP.bin @0x8000 SP505LAPP.bin 

pause