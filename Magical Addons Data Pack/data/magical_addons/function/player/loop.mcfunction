# player:loop
# called by: main:tick_list

## Dimension worldgen
execute store result score #maddons.chunk maddons.x store result score #maddons.chunk_ maddons.x run data get entity @s Pos[0]
execute store result score #maddons.chunk maddons.y store result score #maddons.chunk_ maddons.y run data get entity @s Pos[1]
execute store result score #maddons.chunk maddons.z store result score #maddons.chunk_ maddons.z run data get entity @s Pos[2]
scoreboard players operation #maddons.chunk_ maddons.x %= #16 maddons.constant
scoreboard players operation #maddons.chunk_ maddons.y %= #16 maddons.constant
scoreboard players operation #maddons.chunk_ maddons.z %= #16 maddons.constant
execute store result storage magical_addons:temp data.dimension.x int 1 run scoreboard players operation #maddons.chunk maddons.x -= #maddons.chunk_ maddons.x
execute store result storage magical_addons:temp data.dimension.y int 1 run scoreboard players operation #maddons.chunk maddons.y -= #maddons.chunk_ maddons.y
execute store result storage magical_addons:temp data.dimension.z int 1 run scoreboard players operation #maddons.chunk maddons.z -= #maddons.chunk_ maddons.z
data modify storage magical_addons:temp data.dimension.UUID set from entity @s UUID
data modify storage magical_addons:temp data.dimension.id set string entity @s Dimension 10
function magical_addons:dimension/set_chunk_corner with storage magical_addons:temp data.dimension

## Hyper mode effect
execute if score @s maddons.mana matches 201.. run function magical_addons:effect/hyper_mode

## Wand casting cooldown
scoreboard players remove @s[scores={maddons.cooldown=1..}] maddons.cooldown 1

## Turn item splash potions into splash potion projectiles
execute at @a as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_splash_potion"}}}}},distance=..16] at @s if predicate magical_addons:block/dispenser run function magical_addons:item/sparkstone_splash_potion/set_projectile
execute at @a as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_lingering_potion"}}}}},distance=..16] at @s if predicate magical_addons:block/dispenser run function magical_addons:item/sparkstone_lingering_potion/set_projectile

## Ancient staff deflects impact projectiles
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[0] double -1 run data get entity @s Motion[0] 0.5
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[1] double -1 run data get entity @s Motion[1] 0.5
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[2] double -1 run data get entity @s Motion[2] 0.5

## Step sounds on custom blocks
execute if predicate magical_addons:player/move run function magical_addons:player/event/walk_on_block
execute as @e[type=#magical_addons:uses_custom_tile_step_sound,type=!player,tag=!maddons.custom_step_sound,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..16] at @s run function magical_addons:entity/tile_step
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=maddons.vehicle,tag=maddons.custom_step_sound,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..16] at @s run function magical_addons:entity/step

## Get saved custom block target to detect whether it broke
function magical_addons:block/break_start with entity @s

## Get custom block target
data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:block/mine"
execute store result storage iris:settings MaxRecursionDepth int 1 run attribute @s minecraft:block_interaction_range get 2.5
execute anchored eyes positioned ^ ^ ^ run function iris:get_target

## Save custom block target
function magical_addons:block/save_target with entity @s

## Clear forbidden items
clear @s *[custom_data~{magical_addons:{gui:1}}]

## Get item efficiency level in mainhand to increase or decrease custom block mining speed
execute unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency" store result score @s maddons.nefficiency run scoreboard players set @s maddons.efficiency 0
execute store result score @s maddons.efficiency run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency"
execute store result score @s maddons.nefficiency run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency" -1

## Using commanding spell
function magical_addons:magic/commanding_spell/loop with entity @s[tag=maddons.using_commanding_spell]

## Play automaton boss track
execute if entity @s[tag=maddons.boss.automaton,gamemode=!creative,gamemode=!spectator] if entity @n[type=item_display,tag=maddons.entity,tag=maddons.automaton,distance=..64] run function magical_addons:shared/automaton_music_start

## Stop automaton boss track
execute if entity @s[tag=maddons.boss.automaton] unless entity @n[type=item_display,tag=maddons.entity,tag=maddons.automaton,distance=..64] run function magical_addons:shared/automaton_music_stop

## dev
tellraw @s[tag=maddons.dev] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------\n"},{"text":"Custom Blocks: ","color":"green"},{"score":{"name":"#maddons.block","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill Blocks]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.block]"}},{"text":"\n"},{"text":"Custom Entities: ","color":"green"},{"score":{"name":"#maddons.entity","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"execute as @e[tag=maddons.entity] at @s run function magical_addons:entity/kill"}},{"text":"\n"},{"text":"Custom Spells: ","color":"green"},{"score":{"name":"#maddons.magic","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.magic]"}},{"text":"\n"},{"text":"Custom Particles: ","color":"green"},{"score":{"name":"#maddons.particle","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.particle]"}},{"text":"\n\n"},{"text":"Total Items: ","color":"aqua"},{"score":{"name":"#maddons.item","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[type=item]"}},{"text":"\n"},{"text":"Registered Entities: ","color":"aqua"},{"score":{"name":"#maddons.registered","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.registered,type=!player]"}},{"text":"\n"},{"text":"Total Entities: ","color":"aqua"},{"score":{"name":"#maddons.global","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[type=!player]"}},{"text":"\n-------------------------------"}]
execute if score @s maddons.developer_mode matches 1.. run function magical_addons:dev/toggle_dev_mode