# main:half_second
# called by: main:first, main:half_second

## player
tag @a[gamemode=!survival,gamemode=!adventure] add maddons.invul
tag @a[gamemode=!creative,gamemode=!spectator] remove maddons.invul
execute as @a[tag=maddons.in_aether] at @s if dimension overworld run function magical_addons:dimension/the_aether/return

## block
execute at @a as @e[sort=random,type=item_display,tag=maddons.block.leaves,limit=8,distance=..16] at @s run function magical_addons:block/group/custom/leaves/decay with entity @s item.components."minecraft:custom_data".magical_addons

## mob
execute at @a as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,tag=!maddons.death,distance=..16] at @s run function magical_addons:entity/sculk_spider/check_local
execute at @a as @e[type=item_display,tag=maddons.automaton,tag=maddons.entity,distance=..32] at @s run function magical_addons:entity/automaton/check_local

## item
execute at @a as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"gravitite"}}}}},tag=!maddons.gravitite,distance=..16] at @s run function magical_addons:item/gravitite/fall_up

## magic
execute at @a as @e[type=item_display,tag=maddons.lightning_spell,tag=maddons.found_target] at @s positioned ^ ^ ^-1 run function magical_addons:magic/lightning_spell/electricity/start

## shared
schedule function magical_addons:main/half_second 10