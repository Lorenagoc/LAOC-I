onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red /mux_1_4/a
add wave -noupdate -color Pink /mux_1_4/b
add wave -noupdate -color {Medium Spring Green} /mux_1_4/c
add wave -noupdate -color White /mux_1_4/d
add wave -noupdate -color Yellow /mux_1_4/Control
add wave -noupdate -color Plum -radix decimal /mux_1_4/S
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 168
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {975 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 00000000000000000000000000000000 -endvalue 11111111111111111111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps sim:/mux_1_4/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000000000000000000000000011 -endvalue 11111111111111111111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps sim:/mux_1_4/b 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000000000000000000000000100 -endvalue 11111111111111111111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps sim:/mux_1_4/c 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000000000000000000000000010 -endvalue 11111111111111111111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps sim:/mux_1_4/d 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps sim:/mux_1_4/Control 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
