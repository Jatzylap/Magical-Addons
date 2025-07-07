# block:custom/wizarding_table/engage
# called by: block:custom/wizarding_table/interact

tag @s add on

data merge entity @s[predicate=magical_addons:block/skylit] {brightness:{sky:15,block:9}}
data merge entity @s[predicate=!magical_addons:block/skylit] {brightness:{sky:0,block:9}}

execute store result block ~ ~ ~ components."minecraft:custom_model_data".flags[0] byte 1 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1
function magical_addons:block/custom/wizarding_table/set_state with block ~ ~ ~
data modify block ~ ~ ~ components."minecraft:custom_model_data".flags[0] set value 1
data merge block ~ ~ ~ {Items:[{Slot:9b,id:"stick",count:1,components:{"minecraft:custom_data":{magical_addons:{gui:1},"minecraft:item_model":"air"}}},{Slot:0b,id:"stick",count:1,components:{"minecraft:custom_data":{magical_addons:{gui:1},"minecraft:item_model":"magical_addons:gui/container/wizarding_table"}}}]}
data remove block ~ ~ ~ lock

execute store result score @s maddons.damage run data get block ~ ~ ~ components."minecraft:custom_data".magical_addons.max_damage
execute store result score @s maddons.temp run data get block ~ ~ ~ components."minecraft:custom_data".magical_addons.damage
execute if predicate magical_addons:block/wizarding_table/check_hopper run function magical_addons:block/custom/wizarding_table/damage_from_block
execute if data entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] SelectedItem{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}} run function magical_addons:block/custom/wizarding_table/damage_from_player
scoreboard players operation @s maddons.damage -= @s maddons.temp

playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 1.3
particle firework ~.5 ~ ~ 0 0 0 .1 2
particle firework ~-.5 ~ ~ 0 0 0 .1 2
particle firework ~ ~ ~.5 0 0 0 .1 2
particle firework ~ ~ ~-.5 0 0 0 .1 2
function magical_addons:block/custom/wizarding_table/gui/clear

execute if entity @s[tag=on] run fill ~1 ~ ~ ~-1 ~ ~ light[level=9] keep
execute if entity @s[tag=on] run fill ~ ~ ~1 ~ ~ ~-1 light[level=9] keep
execute if entity @s[tag=on] run fill ~ ~1 ~ ~ ~-1 ~ light[level=9] keep

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

function magical_addons:block/custom/wizarding_table/gui

tag @s remove off

## Clear Orb (wizarding table)
execute if items block ~ ~ ~-1 container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~-1 container.0 with air
execute if items block ~ ~ ~-1 container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~-1 container.1 with air
execute if items block ~ ~ ~-1 container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~-1 container.2 with air
execute if items block ~ ~ ~-1 container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~-1 container.3 with air
execute if items block ~ ~ ~-1 container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~-1 container.4 with air
execute if items block ~ ~-1 ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~-1 ~ container.0 with air
execute if items block ~ ~-1 ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~-1 ~ container.1 with air
execute if items block ~ ~-1 ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~-1 ~ container.2 with air
execute if items block ~ ~-1 ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~-1 ~ container.3 with air
execute if items block ~ ~-1 ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~-1 ~ container.4 with air
execute if items block ~-1 ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~-1 ~ ~ container.0 with air
execute if items block ~-1 ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~-1 ~ ~ container.1 with air
execute if items block ~-1 ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~-1 ~ ~ container.2 with air
execute if items block ~-1 ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~-1 ~ ~ container.3 with air
execute if items block ~-1 ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~-1 ~ ~ container.4 with air
execute if items block ~ ~ ~1 container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~1 container.0 with air
execute if items block ~ ~ ~1 container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~1 container.1 with air
execute if items block ~ ~ ~1 container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~1 container.2 with air
execute if items block ~ ~ ~1 container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~1 container.3 with air
execute if items block ~ ~ ~1 container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~1 container.4 with air
execute if items block ~ ~1 ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~1 ~ container.0 with air
execute if items block ~ ~1 ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~1 ~ container.1 with air
execute if items block ~ ~1 ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~1 ~ container.2 with air
execute if items block ~ ~1 ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~1 ~ container.3 with air
execute if items block ~ ~1 ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~1 ~ container.4 with air
execute if items block ~1 ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~1 ~ ~ container.0 with air
execute if items block ~1 ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~1 ~ ~ container.1 with air
execute if items block ~1 ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~1 ~ ~ container.2 with air
execute if items block ~1 ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~1 ~ ~ container.3 with air
execute if items block ~1 ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~1 ~ ~ container.4 with air