# main:one_second
# called by: main:first, main:one_second

# block
execute as @a at @s anchored eyes positioned ^ ^ ^ run function magical_addons:block/update_start
execute at @a if predicate magical_addons:shared/10_percent if dimension the_echo as @e[type=item_display,sort=random,limit=1,tag=maddons.sparkstone_cluster,distance=..30] at @s run function magical_addons:block/custom/sparkstone_cluster/ambient
#execute as @e[tag=maddons.tw_block] at @s unless entity @e[dy=-2,tag=maddons.tw_track] run kill
#kill @e[type=interaction,tag=maddons.hitbox]

# structure
execute as @e[tag=maddons.force_custom_block] at @s run function magical_addons:dev/---/force_custom_block/0 with entity @s item.components."minecraft:custom_data".magical_addons
#execute as @e[type=marker,tag=maddons.dragon_spawner,tag=maddons.tower_center] at @s if predicate kt.shared:25_percent if block ~ ~40 ~ air positioned ~ ~40 ~ run function magical_addons:mob/dragon/summon
#execute as @e[type=marker,tag=maddons.dragon_spawner,tag=!maddons.tower_center] at @s if block ~ ~ ~ air run function magical_addons:mob/dragon/summon
#tag @e[tag=maddons.tower_center] remove maddons.dragon_spawner
#kill @e[tag=maddons.dragon_spawner,tag=!maddons.tower_center]

# player
#execute if predicate kt.shared:10_percent as @r[gamemode=!creative,gamemode=!spectator,nbt={Dimension:"minecraft:the_echo"}] at @s unless entity @e[distance=..50,type=interaction,tag=maddons.echoman,tag=ai] anchored eyes positioned ^ ^20 ^66 run function magical_addons:mob/echoman/summon
#execute if predicate kt.shared:5_percent as @r[gamemode=!creative,gamemode=!spectator,nbt={Dimension:"minecraft:the_echo"}] at @s unless entity @e[distance=..50,type=interaction,tag=maddons.echoman,tag=ai] anchored eyes positioned ^ ^20 ^33 run function magical_addons:mob/echoman/summon
stopsound @a[nbt={Dimension:"minecraft:the_aether"}] music music.creative
stopsound @a[nbt={Dimension:"minecraft:the_echo"}] music music.creative
scoreboard players reset @a maddons.successCount

# effect
execute as @a[tag=maddons.effect.lucidity] at @s run function magical_addons:effect/lucidity

# mob
execute at @a as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,nbt=!{item:{components:{"minecraft:custom_model_data":{strings:["death"]}}}},distance=..16] at @s run function magical_addons:entity/sculk_spider/check_local
execute as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,nbt=!{item:{components:{"minecraft:custom_model_data":{strings:["death"]}}}}] at @s run function magical_addons:entity/sculk_spider/check_global
execute as @e[type=item_display,tag=maddons.player_display,tag=maddons.entity] at @s run function magical_addons:entity/player_display/check_global

# portal
execute as @e[type=!#magical_addons:invulnerable] at @s run function magical_addons:dungeon/ancient_portal/travel
execute as @a at @s run execute as @e[type=item_display,tag=maddons.ancient_portal,limit=199,sort=random,distance=..30] at @s run function magical_addons:dungeon/ancient_portal/tick
execute if predicate magical_addons:shared/5_percent as @n[type=item_display,tag=maddons.ancient_portal] at @s run playsound magical_addons:block.portal.ambient ambient @a ~ ~ ~ 1

# shared
schedule function magical_addons:main/one_second 1s