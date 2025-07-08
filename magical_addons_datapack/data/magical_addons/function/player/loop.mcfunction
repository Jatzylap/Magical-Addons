# player:loop
# called by: main:tick_list

## dimension
execute if dimension minecraft:overworld run function magical_addons:dimension/overworld/loop
execute if dimension minecraft:the_nether run function magical_addons:dimension/the_nether/loop
execute if dimension minecraft:the_end run function magical_addons:dimension/the_end/loop
execute if dimension minecraft:the_aether run function magical_addons:dimension/the_aether/loop

## armour
tag @s[tag=!maddons.aa,scores={maddons.mana=..199}] remove maddons.fullmana
tag @s[tag=maddons.aa,scores={maddons.mana=..399}] remove maddons.fullmana
execute if entity @s[tag=!maddons.aa,scores={maddons.mana=200..}] run tag @s add maddons.fullmana
execute if entity @s[tag=maddons.aa,scores={maddons.mana=400..}] run tag @s add maddons.fullmana

## self
tag @s[gamemode=!survival,gamemode=!adventure] add maddons.invul
tag @s[gamemode=!creative,gamemode=!spectator] remove maddons.invul
execute if score @s[tag=!maddons.aa] maddons.mana matches 201.. run function magical_addons:effect/hyper_mode
scoreboard players remove @s[scores={maddons.cooldown=1..}] maddons.cooldown 1

## portal
execute if score @s maddons.portal_time_check matches 1 if entity @n[type=item_display,tag=maddons.ancient_portal,distance=..1.6] run function magical_addons:player/event/overlay_ancient_portal

## block
execute if entity @s[scores={maddons.walk1=1..}] run function magical_addons:player/event/walk_on_block
execute if entity @s[scores={maddons.sprint1=1..}] run function magical_addons:player/event/sprint_on_block
execute as @e[type=#magical_addons:uses_tile_step_sound,type=!player,tag=!maddons.custom_step_sound,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..16] at @s run function magical_addons:entity/tile_step
execute as @e[type=!#magical_addons:invulnerable,tag=maddons.vehicle,tag=maddons.custom_step_sound,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..16] at @s run function magical_addons:entity/step
execute store result storage magical_addons:temp data.block.target.x int 1 run scoreboard players get @s maddons.ray.x
execute store result storage magical_addons:temp data.block.target.y int 1 run scoreboard players get @s maddons.ray.y
execute store result storage magical_addons:temp data.block.target.z int 1 run scoreboard players get @s maddons.ray.z
scoreboard players set @s maddons.ray.x 0
scoreboard players set @s maddons.ray.y 2147483647
scoreboard players set @s maddons.ray.z 0
execute anchored eyes positioned ^ ^ ^ run function magical_addons:block/mine_start
function magical_addons:block/break_start with storage magical_addons:temp data.block.target

## item
clear @s *[custom_data~{magical_addons:{gui:1}}]
kill @e[distance=..16,type=item,nbt=!{Thrower:{}},nbt={Item:{components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDY2Y2NkMDEzOWUxZjllZDI3NTU0YTBjMzlhNGVmZmM3MzYxMGI4NmFhMDU3OWU0MDVmNjQxY2QxZDY3OGM0NSJ9fX0="}]}}}},nbt=!{Item:{components:{"minecraft:custom_data":{magical_addons:{}}}}}]
execute unless data entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:efficiency" store result score @s maddons.nefficiency run scoreboard players set @s maddons.efficiency 0
execute store result score @s maddons.efficiency run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:efficiency"
execute store result score @s maddons.nefficiency run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:efficiency" -1

## dev
tellraw @s[tag=maddons.dev] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------\n"},{"text":"[Get Items]\n","color":"yellow","clickEvent":{"action":"run_command","value":"/function magical_addons:dev/get_items"}},{"text":"Custom Blocks: ","color":"green"},{"score":{"name":"#maddons.block","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill Blocks]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.block]"}},{"text":"\n"},{"text":"Custom Entities: ","color":"green"},{"score":{"name":"#maddons.entity","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=maddons.entity] at @s run function magical_addons:entity/kill"}},{"text":"\n"},{"text":"Custom Spells: ","color":"green"},{"score":{"name":"#maddons.magic","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.magic]"}},{"text":"\n"},{"text":"Custom Particles: ","color":"green"},{"score":{"name":"#maddons.particle","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.particle]"}},{"text":"\n\n"},{"text":"Total Items: ","color":"aqua"},{"score":{"name":"#maddons.item","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=item]"}},{"text":"\n"},{"text":"Registered Entities: ","color":"aqua"},{"score":{"name":"#maddons.registered","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.registered,type=!player]"}},{"text":"\n"},{"text":"Total Entities: ","color":"aqua"},{"score":{"name":"#maddons.global","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=!player]"}},{"text":"\n-------------------------------"}]
execute if score @s maddons.developer_mode matches 1.. run function magical_addons:dev/toggle_dev_mode