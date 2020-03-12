onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red /FUNC2/ctl
add wave -noupdate -color Yellow /FUNC2/reset
add wave -noupdate -color {Medium Spring Green} /FUNC2/clk
add wave -noupdate -color White -radix binary -childformat {{{/FUNC2/out[7]} -radix decimal} {{/FUNC2/out[6]} -radix decimal} {{/FUNC2/out[5]} -radix decimal} {{/FUNC2/out[4]} -radix decimal} {{/FUNC2/out[3]} -radix decimal} {{/FUNC2/out[2]} -radix decimal} {{/FUNC2/out[1]} -radix decimal} {{/FUNC2/out[0]} -radix decimal}} -expand -subitemconfig {{/FUNC2/out[7]} {-color White -format Literal -radix decimal} {/FUNC2/out[6]} {-color White -format Literal -radix decimal} {/FUNC2/out[5]} {-color White -format Literal -radix decimal} {/FUNC2/out[4]} {-color White -format Literal -radix decimal} {/FUNC2/out[3]} {-color White -format Literal -radix decimal} {/FUNC2/out[2]} {-color White -format Literal -radix decimal} {/FUNC2/out[1]} {-color White -format Literal -radix decimal} {/FUNC2/out[0]} {-color White -format Literal -radix decimal}} /FUNC2/out
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
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC2/ctl 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 100ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/FUNC2/reset 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/FUNC2/clk 
WaveCollapseAll -1
wave clipboard restore
