# block:custom/wizarding_table/operate
# called by: block:custom/wizarding_table/tick

## Set light
execute if entity @s[tag=on] run fill ~1 ~ ~ ~-1 ~ ~ light[level=9] keep
execute if entity @s[tag=on] run fill ~ ~ ~1 ~ ~ ~-1 light[level=9] keep
execute if entity @s[tag=on] run fill ~ ~1 ~ ~ ~-1 ~ light[level=9] keep

## Check GUI
execute if data block ~ ~ ~ Items[{Slot:2b}] run tag @s add maddons.wt_slot2
execute if data block ~ ~ ~ Items[{Slot:3b}] run tag @s add maddons.wt_slot3
execute if data block ~ ~ ~ Items[{Slot:4b}] run tag @s add maddons.wt_slot4
execute if data block ~ ~ ~ Items[{Slot:11b}] run tag @s add maddons.wt_slot11
execute if data block ~ ~ ~ Items[{Slot:12b}] run tag @s add maddons.wt_slot12
execute if data block ~ ~ ~ Items[{Slot:13b}] run tag @s add maddons.wt_slot13
execute if data block ~ ~ ~ Items[{Slot:20b}] run tag @s add maddons.wt_slot20
execute if data block ~ ~ ~ Items[{Slot:21b}] run tag @s add maddons.wt_slot21
execute if data block ~ ~ ~ Items[{Slot:22b}] run tag @s add maddons.wt_slot22
execute unless data block ~ ~ ~ Items[{Slot:2b}] run tag @s remove maddons.wt_slot2
execute unless data block ~ ~ ~ Items[{Slot:3b}] run tag @s remove maddons.wt_slot3
execute unless data block ~ ~ ~ Items[{Slot:4b}] run tag @s remove maddons.wt_slot4
execute unless data block ~ ~ ~ Items[{Slot:11b}] run tag @s remove maddons.wt_slot11
execute unless data block ~ ~ ~ Items[{Slot:12b}] run tag @s remove maddons.wt_slot12
execute unless data block ~ ~ ~ Items[{Slot:13b}] run tag @s remove maddons.wt_slot13
execute unless data block ~ ~ ~ Items[{Slot:20b}] run tag @s remove maddons.wt_slot20
execute unless data block ~ ~ ~ Items[{Slot:21b}] run tag @s remove maddons.wt_slot21
execute unless data block ~ ~ ~ Items[{Slot:22b}] run tag @s remove maddons.wt_slot22
execute if score @s maddons.craft matches 1 unless data block ~ ~ ~ Items[{Slot:16b}] run function magical_addons:block/custom/wizarding_table/gui/consume

## Update GUI
function magical_addons:block/custom/wizarding_table/gui