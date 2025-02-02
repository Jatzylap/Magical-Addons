# main:one_second
# called by: main:first, main:one_second

# block
execute as @a at @s anchored eyes positioned ^ ^ ^ run function magical_addons:block/light_start
#execute as @e[tag=maddons.tw_block] at @s unless entity @e[dy=-2,tag=maddons.tw_track] run kill
#kill @e[type=interaction,tag=maddons.hitbox]

# structure
#execute as @e[type=marker,tag=maddons.dragon_spawner,tag=maddons.tower_center] at @s if predicate kt.shared:25_percent if block ~ ~40 ~ air positioned ~ ~40 ~ run function magical_addons:mob/dragon/summon
#execute as @e[type=marker,tag=maddons.dragon_spawner,tag=!maddons.tower_center] at @s if block ~ ~ ~ air run function magical_addons:mob/dragon/summon
#tag @e[tag=maddons.tower_center] remove maddons.dragon_spawner
#kill @e[tag=maddons.dragon_spawner,tag=!maddons.tower_center]

# item 
#execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{maddons.mana_item:1}}}},nbt=!{Item:{components:{"minecraft:custom_data":{maddons.drop_item:1}}}}] at @s run tag @s add maddons.item
#kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{maddons.gui:1}}}}]

# player
#execute if predicate kt.shared:10_percent as @r[gamemode=!creative,gamemode=!spectator,nbt={Dimension:"minecraft:the_echo"}] at @s unless entity @e[distance=..50,type=interaction,tag=maddons.echoman,tag=ai] anchored eyes positioned ^ ^20 ^66 run function magical_addons:mob/echoman/summon
#execute if predicate kt.shared:5_percent as @r[gamemode=!creative,gamemode=!spectator,nbt={Dimension:"minecraft:the_echo"}] at @s unless entity @e[distance=..50,type=interaction,tag=maddons.echoman,tag=ai] anchored eyes positioned ^ ^20 ^33 run function magical_addons:mob/echoman/summon
scoreboard players reset @a maddons.successCount

# effect
execute as @a[tag=maddons.effect.lucidity] at @s run function magical_addons:effect/lucidity

# mob
execute as @e[type=item_display,tag=maddons.sculk_spider,tag=maddons.entity,tag=!maddons.death] at @s run function magical_addons:entity/sculk_spider/one_second
tag @e[type=drowned] add maddons.drowned
tag @e[type=#magical_addons:boss] add maddons.boss

# portal
execute as @e[type=!#magical_addons:invulnerable] at @s run function magical_addons:dungeon/aether_portal/travel
execute as @a at @s run execute as @e[type=item_display,tag=maddons.aether_portal,limit=199,sort=random,distance=..30] at @s run function magical_addons:dungeon/aether_portal/check
execute if predicate magical_addons:shared/5_percent as @a at @n[type=item_display,tag=maddons.aether_portal,distance=..30] run playsound minecraft:block.portal.ambient block @a ~ ~ ~ 1 1.2

# shared
schedule function magical_addons:main/one_second 1s