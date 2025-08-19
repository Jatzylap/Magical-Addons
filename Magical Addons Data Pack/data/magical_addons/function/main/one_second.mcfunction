# main:one_second
# called by: main:first, main:one_second

## unregister entities
data modify storage magical_addons:temp data.registry set from storage magical_addons:registry data.entities
execute store result score #maddons.entity_count maddons.registry run data get storage magical_addons:temp data.registry
execute if score #maddons.entity_count maddons.registry matches 1.. run function magical_addons:main/unregister_cycle

## re-register entities that were unloaded
execute as @a[tag=maddons.registered] at @s run function magical_addons:dev/register_entity {cmd:"function magical_addons:player/loop"}
execute at @a run execute as @e[type=!player,tag=maddons.registered] at @s run function magical_addons:main/register with entity @s data.magical_addons

## block
execute as @a at @s anchored eyes positioned ^ ^ ^ run function magical_addons:block/update_start
execute at @a as @e[type=item_display,tag=maddons.block.gravitite,distance=..16] at @s unless block ~ ~ ~ #magical_addons:non_collidable run function magical_addons:block/group/custom/gravitite/fall_up with entity @s item.components."minecraft:custom_data".magical_addons
execute at @a as @e[type=item_display,tag=maddons.wizarding_table,tag=off,distance=..16] at @s if predicate magical_addons:block/wizarding_table/check_hopper run function magical_addons:block/custom/wizarding_table/engage
execute at @a as @e[type=item_display,tag=maddons.block.sapling,distance=..16] at @s run function magical_addons:block/group/custom/sapling/grow with entity @s item.components."minecraft:custom_data".magical_addons

## structure
execute as @e[tag=maddons.custom_entity_spawner] at @s run function magical_addons:dev/force_custom_entity with entity @s data.magical_addons

## player
stopsound @a[nbt={Dimension:"minecraft:the_aether"}] music music.creative
scoreboard players reset @a maddons.successCount

## entity
execute as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,tag=!maddons.death] at @s run function magical_addons:entity/sculk_spider/check_global
execute at @a as @e[type=item_display,tag=maddons.automaton,tag=maddons.entity,tag=!maddons.death] at @s run function magical_addons:entity/automaton/check_global
#execute at @a as @e[type=armor_stand,tag=!maddons.registered,tag=maddons.entity,tag=maddons.sparkstone_splash_potion,distance=..16] at @s run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/sparkstone_splash_potion/tick"}
#execute at @a as @e[type=armor_stand,tag=!maddons.registered,tag=maddons.entity,tag=maddons.sparkstone_lingering_potion,distance=..16] at @s run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/sparkstone_lingering_potion/tick"}

## portal
execute as @a at @s run execute as @e[type=item_display,tag=maddons.aether_portal,tag=maddons.block.part_foot,limit=100,sort=random,distance=..16] at @s run function magical_addons:block/custom/aether_portal/tick
execute if predicate magical_addons:shared/5_percent as @n[type=item_display,tag=maddons.aether_portal] at @s run playsound magical_addons:block.portal.ambient ambient @a ~ ~ ~ 1

## shared
schedule function magical_addons:main/one_second 1s