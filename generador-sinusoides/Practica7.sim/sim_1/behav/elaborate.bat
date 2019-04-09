@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.3\\bin
call %xv_path%/xelab  -wto fa7faa7ccd3746cd9cf44e0a4ba648f7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testbench_sistema_entero_behav xil_defaultlib.testbench_sistema_entero -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
