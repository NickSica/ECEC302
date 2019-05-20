@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 23589f9c119e4d5fb0f72535dd78ce28 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot synch_ckt_test_behav xil_defaultlib.synch_ckt_test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
