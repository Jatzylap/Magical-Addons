# main:one_second
# called by: main:first, main:one_second

## entity
execute store result storage magical_addons:temp data.registry.unregister_count int 1 store result score #maddons.main.unregister maddons.registry run data get storage magical_addons:registry data.entities
execute store result storage magical_addons:temp data.registry.unregister_count int 1 run scoreboard players operation #maddons.main.unregister maddons.registry -= #1 maddons.constant
function magical_addons:main/unregister_cycle with storage magical_addons:temp data.registry

## block
execute as @a at @s anchored eyes positioned ^ ^ ^ run function magical_addons:block/update_start
execute at @a as @e[type=item_display,tag=maddons.block.leaves,sort=random,limit=6,distance=..16] at @s run function magical_addons:block/group/custom/leaves/decay with entity @s item.components."minecraft:custom_data".magical_addons
execute at @a as @e[type=item_display,tag=maddons.block.gravitite,distance=..16] at @s run function magical_addons:block/group/custom/gravitite/fall_up with entity @s item.components."minecraft:custom_data".magical_addons
execute at @a as @e[type=item_display,tag=maddons.wizarding_table,tag=off,distance=..16] at @s if predicate magical_addons:block/wizarding_table/check_hopper run function magical_addons:block/custom/wizarding_table/engage
#execute at @a as @e[type=item_display,tag=maddons.block.sapling,distance=..16] at @s if predicate magical_addons:shared/5_percent run function magical_addons:block/group/custom/sapling/grow with entity @s item.components."minecraft:custom_data".magical_addons

## structure
execute as @r[tag=!maddons.dev] at @s run execute as @e[tag=maddons.force_custom_block,limit=150] at @s run function magical_addons:dev/---/force_custom_block/0 with entity @s item.components."minecraft:custom_data".magical_addons

## player
stopsound @a[nbt={Dimension:"minecraft:the_aether"}] music music.creative
stopsound @a[nbt={Dimension:"minecraft:the_echo"}] music music.creative
scoreboard players reset @a maddons.successCount

## effect
execute as @a[tag=maddons.effect.lucidity] at @s run function magical_addons:effect/lucidity

## mob
execute at @a as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,tag=!maddons.death,distance=..16] at @s run function magical_addons:entity/sculk_spider/check_local
execute as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,tag=!maddons.death] at @s run function magical_addons:entity/sculk_spider/check_global
execute as @e[type=item_display,tag=maddons.player_display,tag=maddons.entity] at @s run function magical_addons:entity/player_display/check_global
execute at @a as @e[type=item_display,tag=maddons.automaton,tag=maddons.entity,distance=..16] at @s run function magical_addons:entity/automaton/check_local

## portal
execute as @e[type=!#magical_addons:invulnerable] at @s run function magical_addons:dungeon/ancient_portal/travel
execute as @a at @s run execute as @e[type=item_display,tag=maddons.ancient_portal,limit=199,sort=random,distance=..30] at @s run function magical_addons:dungeon/ancient_portal/tick
execute if predicate magical_addons:shared/5_percent as @n[type=item_display,tag=maddons.ancient_portal] at @s run playsound magical_addons:block.portal.ambient ambient @a ~ ~ ~ 1

## shared
schedule function magical_addons:main/one_second 1s