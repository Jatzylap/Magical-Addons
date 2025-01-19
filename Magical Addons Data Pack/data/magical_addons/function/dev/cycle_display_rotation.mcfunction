$data modify storage maddons.dev:cycle_display_rotation axis set value "$(axis)"
$data modify storage maddons.dev:cycle_display_rotation angle set value $(angle)f
$scoreboard players set #maddons.dev maddons.cycle_display_rot $(angle)
execute if entity @s[type=item_display] run function magical_addons:dev/---/cycle_display_rotation/0
data remove storage maddons.dev:cycle_display_rotation axis
data remove storage maddons.dev:cycle_display_rotation angle
scoreboard players reset #maddons.dev.cdr.cm maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.sm maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.x maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.y maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.z maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.w maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.x^2 maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.y^2 maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.z^2 maddons.cycle_display_rot
scoreboard players reset #maddons.dev.cdr.w^2 maddons.cycle_display_rot
scoreboard players reset #maddons.dev maddons.cycle_display_rot
