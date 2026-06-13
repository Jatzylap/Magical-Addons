# player:tick
# called by advancement: player:tick

## If player moves
execute if predicate magical_addons:player/move run function magical_addons:player/move

## Hyper mode effect
execute if score @s maddons.mana matches 201.. run function magical_addons:effect/hyper_mode

## Wand casting cooldown
scoreboard players remove @s[scores={maddons.cooldown=1..}] maddons.cooldown 1

## Wand casting sound cooldown
scoreboard players remove @s[scores={maddons.sound_cooldown=1..}] maddons.sound_cooldown 1

## Turn item splash potions into splash potion projectiles
execute at @a as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_splash_potion"}}}}},distance=..16] at @s if predicate magical_addons:block/dispenser run function magical_addons:item/sparkstone_splash_potion/set_projectile
execute at @a as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_lingering_potion"}}}}},distance=..16] at @s if predicate magical_addons:block/dispenser run function magical_addons:item/sparkstone_lingering_potion/set_projectile

### Ancient staff deflects impact projectiles
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @n[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[0] double -1 run data get entity @s Motion[0] 0.5
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @n[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[1] double -1 run data get entity @s Motion[1] 0.5
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:ancient_staff}}] anchored eyes positioned ^ ^ ^ as @n[type=#minecraft:impact_projectiles,distance=..2] at @s store result entity @s Motion[2] double -1 run data get entity @s Motion[2] 0.5

## Step sounds on custom blocks
execute as @e[type=#magical_addons:uses_tile_step_sound,type=!player,tag=!maddons.custom_step_sound,nbt=!{Motion:[0.000d,0.000d,0.000d]},distance=..16] at @s run function magical_addons:entity/tile_step
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=maddons.vehicle,tag=maddons.custom_step_sound,nbt=!{Motion:[0.000d,0.000d,0.000d]},distance=..16] at @s run function magical_addons:entity/step

## Get saved custom block target to detect whether it broke
function magical_addons:block/break_start with entity @s

## Clear forbidden items
clear @s *[custom_data~{magical_addons:{gui:1}}|custom_data~{magical_addons:{gui:1b}}]

## Get item efficiency level in mainhand to increase or decrease custom block mining speed
execute unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency" store result score @s maddons.nefficiency run scoreboard players set @s maddons.efficiency 0
execute store result score @s maddons.efficiency run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency"
execute store result score @s maddons.nefficiency run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency" -1

## Get custom block target
execute store result storage iris:settings max_distance float 0.001 run attribute @s minecraft:block_interaction_range get 1000
data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/mine",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}
execute anchored eyes positioned ^ ^ ^ run function iris:get_target

## RAYCAST DEBUG
#title @s times 0 1 0
#title @s title ["",{"nbt":"block","interpret":false,"storage":"iris:output"}]
#title @s title ["",{"nbt":"SelectedItem.components.\"minecraft:attribute_modifiers\"[{type:\"minecraft:block_break_speed\"}].amount","interpret":false,"entity":"@s"}]
#title @s title ["",{"nbt":"attributes[{id:\"minecraft:block_break_speed\"}].base","interpret":false,"entity":"@s"}]

## Using commanding spell
function magical_addons:magic/commanding_spell/loop with entity @s[tag=maddons.using_commanding_spell]

## Play automaton music track
execute if data storage magical_addons:config {"disable_custom_boss_music":false} if entity @s[tag=maddons.boss.automaton] if entity @n[type=item_display,tag=maddons.entity.ai,tag=maddons.automaton,distance=..64] run function magical_addons:shared/automaton_music_start

## Stop automaton music track
execute if data storage magical_addons:config {"disable_custom_boss_music":false} if entity @s[tag=maddons.boss.automaton] unless entity @n[type=item_display,tag=maddons.entity.ai,tag=maddons.automaton,distance=..64] run function magical_addons:shared/automaton_music_stop

## Dialog
execute as @s[scores={maddons.dialog.gamerules=1..}] run function magical_addons:dialog/gamerules with storage magical_addons:config

## Aether portal overlay
execute unless data entity @s {SleepTimer:0s} if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run scoreboard players add @s maddons.portal 0
execute if score @s maddons.portal matches 0.. run function magical_addons:player/aether_portal_overlay

## Developer
tellraw @s[tag=maddons.dev] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------\n"},{"text":"Custom Blocks: ","color":"green"},{"score":{"name":"#maddons.block","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill Blocks]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.block]"}},{"text":"\n"},{"text":"Custom Entities: ","color":"green"},{"score":{"name":"#maddons.entity","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.entity]"}},{"text":"\n"},{"text":"Custom Spells: ","color":"green"},{"score":{"name":"#maddons.magic","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.magic]"}},{"text":"\n"},{"text":"Custom Particles: ","color":"green"},{"score":{"name":"#maddons.particle","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.particle]"}},{"text":"\n\n"},{"text":"Total Items: ","color":"aqua"},{"score":{"name":"#maddons.item","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[type=item]"}},{"text":"\n"},{"text":"Registered Entities: ","color":"aqua"},{"score":{"name":"#maddons.registered","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[tag=maddons.registered,type=!player]"}},{"text":"\n"},{"text":"Total Entities: ","color":"aqua"},{"score":{"name":"#maddons.global","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","click_event":{"action":"run_command","command":"kill @e[type=!player]"}},{"text":"\n-------------------------------"}]
execute if score @s maddons.developer_mode matches 1.. run function magical_addons:dev/toggle_dev_mode

## Ring of magnetism
function magical_addons:item/ring_of_magnetism/attract

## Reset
advancement revoke @s only magical_addons:---/player/tick