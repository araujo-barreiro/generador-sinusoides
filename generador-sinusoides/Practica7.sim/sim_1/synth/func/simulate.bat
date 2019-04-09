@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.3\\bin
call %xv_path%/xsim testbench_sistema_entero_func_synth -key {Post-Synthesis:sim_1:Functional:testbench_sistema_entero} -tclbatch testbench_sistema_entero.tcl -view C:/Users/guill/Desktop/Practica7.xpr/Practica7/testbench_sistema_entero_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
