# main:one_second
# called by: main:first, main:one_second

## unregister entities
data modify storage magical_addons:temp data.tick set from storage magical_addons:tick data.entities
execute store result score #magical_addons:entity_count maddons.tick run data get storage magical_addons:temp data.tick
execute if score #magical_addons:entity_count maddons.tick matches 1.. run function magical_addons:entity/unregister_cycle

## re-register entities that were unloaded
execute as @e[type=!player,tag=maddons.entity.registered] at @s run function magical_addons:entity/register

## block
execute as @a at @s anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{entities:0b,on_targeted_block:"function magical_addons:block/update_start",max_distance:32}}
execute at @a as @e[type=item_display,tag=maddons.block.gravitite,distance=..16] at @s unless block ~ ~ ~ #magical_addons:non_collidable run function magical_addons:block/group/custom/gravitite/fall_up with entity @s data.magical_addons
execute at @a as @e[type=item_display,tag=maddons.wizarding_table,tag=off,distance=..16] at @s if predicate magical_addons:block/wizarding_table/check_hopper run function magical_addons:block/custom/wizarding_table/engage
execute at @a as @e[type=item_display,tag=maddons.block.sapling,sort=random,limit=30] at @s run function magical_addons:block/group/custom/sapling/grow with entity @s data.magical_addons

## structure
execute store result score #maddons.shared.difficulty maddons.temp run difficulty
execute store result score #maddons.shared.spawn_mobs maddons.temp run gamerule spawn_mobs
execute unless score #maddons.shared.difficulty maddons.temp matches 0 unless score #maddons.shared.spawn_mobs maddons.temp matches 0 as @e[tag=maddons.custom_entity_spawner] at @s run function magical_addons:entity/spawn with entity @s data.magical_addons

## stop creative music in aether dimension
stopsound @a[nbt={Dimension:"minecraft:the_aether"}] music music.creative

## entity
execute as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity.brain] at @s run function magical_addons:entity/sculk_spider/check_global
execute as @e[type=item_display,tag=maddons.automaton,tag=maddons.entity.brain] at @s run function magical_addons:entity/automaton/check_global

## portal
execute as @a at @s run execute as @e[type=item_display,tag=maddons.aether_portal,tag=maddons.block.part_foot,limit=100,sort=random,distance=..16] at @s run function magical_addons:block/custom/aether_portal/tick
execute if predicate magical_addons:shared/5_percent as @n[type=item_display,tag=maddons.aether_portal] at @s as @a run playsound magical_addons:block.portal.ambient ambient @a

## shared
scoreboard players reset @a maddons.successCount
schedule function magical_addons:main/one_second 1s