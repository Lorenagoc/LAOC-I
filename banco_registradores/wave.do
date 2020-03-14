onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Violet /banco_registradores/Read1
add wave -noupdate -color {Dark Orchid} /banco_registradores/Read2
add wave -noupdate -color White -radix unsigned /banco_registradores/RegWrite
add wave -noupdate -color Aquamarine -radix unsigned /banco_registradores/WriteData
add wave -noupdate -radix unsigned /banco_registradores/WriteReg
add wave -noupdate -color Khaki -radix unsigned /banco_registradores/clock
add wave -noupdate -color Yellow -radix unsigned /banco_registradores/Data1
add wave -noupdate -color Yellow -radix unsigned /banco_registradores/Data2
add wave -noupdate -color Orange -radix unsigned /banco_registradores/saida_decodificador
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg0
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg1
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg2
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg3
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg4
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg5
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg6
add wave -noupdate -color Coral -radix unsigned /banco_registradores/saida_reg7
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {179 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {977 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/banco_registradores/Read1 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/banco_registradores/Read2 
wave create -driver freeze -pattern counter -startvalue 001 -endvalue 111 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/banco_registradores/Read2 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 200ps sim:/banco_registradores/RegWrite 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 200ps sim:/banco_registradores/RegWrite 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 500ps Edit:/banco_registradores/RegWrite 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 1000ps Edit:/banco_registradores/RegWrite 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 125ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/banco_registradores/WriteData 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 125ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/banco_registradores/WriteReg 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 125ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps Edit:/banco_registradores/WriteData 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/banco_registradores/clock 
WaveCollapseAll -1
wave clipboard restore
