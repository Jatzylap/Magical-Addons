# main:half_second
# called by: main:first, main:half_second

## player
tag @a[gamemode=!survival,gamemode=!adventure] add maddons.invul
tag @a[gamemode=!creative,gamemode=!spectator] remove maddons.invul

## Remove fog in aether unless near automaton
execute as @a at @s if dimension minecraft:the_aether unless entity @e[distance=..64,tag=maddons.automaton,tag=maddons.entity.brain,type=item_display] run effect give @s darkness 1 0 true

## catch soul in a bottle
execute as @a at @s if predicate magical_addons:player/soul_in_bottle if items entity @s weapon.offhand minecraft:glass_bottle unless items entity @s weapon.mainhand minecraft:glass_bottle run loot replace entity @s weapon.offhand loot magical_addons:soul_bottle
execute as @a at @s if predicate magical_addons:player/soul_in_bottle if items entity @s weapon.mainhand minecraft:glass_bottle run loot replace entity @s weapon.mainhand loot magical_addons:soul_bottle

## block
execute at @a as @e[sort=random,type=item_display,tag=maddons.block.leaves,limit=1,distance=..32] at @s run function magical_addons:block/group/custom/leaves/decay with entity @s data.magical_addons
execute at @a as @e[type=#magical_addons:display,tag=maddons.block,tag=!maddons.block.no_break,distance=..16] at @s run function magical_addons:block/break with entity @s data.magical_addons

## mob
execute at @a as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity.brain,tag=!maddons.entity.death,distance=..16] at @s run function magical_addons:entity/sculk_spider/check_local
execute at @a as @e[type=item_display,tag=maddons.automaton,tag=maddons.entity.brain,tag=!maddons.entity.death,distance=..64] at @s run function magical_addons:entity/automaton/check_local

## item
execute at @a as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"gravitite"}}}}},tag=!maddons.gravitite,distance=..16] at @s run function magical_addons:item/gravitite/fall_up

## magic
execute at @a as @e[type=item_display,tag=maddons.lightning_spell,tag=maddons.found_target] at @s positioned ^ ^ ^-1 run function magical_addons:magic/lightning_spell/electricity/start

## shared
schedule function magical_addons:main/half_second 10