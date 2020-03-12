onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red -format Literal -radix binary /flip_flop_D/D
add wave -noupdate -color Pink -format Literal -radix binary /flip_flop_D/clk
add wave -noupdate -color Cyan -format Literal -radix binary /flip_flop_D/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {216 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {1088 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/flip_flop_D/D 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/flip_flop_D/clk 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 150ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/flip_flop_D/clk 
WaveCollapseAll -1
wave clipboard restore
