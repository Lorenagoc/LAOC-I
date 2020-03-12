onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red -format Literal -radix decimal /FUNC1/I0
add wave -noupdate -color {Medium Spring Green} -format Literal -radix decimal /FUNC1/I1
add wave -noupdate -color Magenta -format Literal -radix binary /FUNC1/S
add wave -noupdate -color White -format Literal -radix binary /FUNC1/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {400 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 38
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
WaveRestoreZoom {0 ps} {1169 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC1/I0 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC1/I1 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 100ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC1/I1 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 150ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC1/S 
WaveCollapseAll -1
wave clipboard restore
