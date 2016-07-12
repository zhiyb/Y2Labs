onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /test/m/clock
add wave -noupdate -radix hexadecimal /test/m/start
add wave -noupdate -radix hexadecimal /test/m/ready
add wave -noupdate -radix hexadecimal /test/m/reset
add wave -noupdate -radix hexadecimal /test/m/shift
add wave -noupdate -radix hexadecimal /test/m/add_shift
add wave -noupdate -radix hexadecimal /test/m/S/count
add wave -noupdate /test/m/S/present
add wave -noupdate -radix hexadecimal /test/m/M
add wave -noupdate -radix hexadecimal /test/m/Qin
add wave -noupdate -radix hexadecimal /test/m/AQ
add wave -noupdate -radix hexadecimal /test/m/func
add wave -noupdate -radix hexadecimal /test/m/oe
add wave -noupdate -radix hexadecimal /test/op
add wave -noupdate -radix hexadecimal /test/m/data
TreeUpdate [SetDefaultTree]
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {336 ns}
