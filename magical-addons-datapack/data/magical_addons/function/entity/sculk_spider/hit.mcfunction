# entity:sculk_spider/hit
# called by advancement: entity:hit_sculk_spider

## Hurt
execute as @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s on passengers on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b
execute as @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s on passengers on passengers as @s[tag=maddons.entity.brain,tag=!maddons.entity.baby,tag=!maddons.entity.death,tag=!maddons.entity.silent] run playsound entity.spider.hurt hostile @a ~ ~ ~ 1
execute as @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s on passengers on passengers as @s[tag=maddons.entity.brain,tag=maddons.entity.baby,tag=!maddons.entity.death,tag=!maddons.entity.silent] run playsound entity.spider.hurt hostile @a ~ ~ ~ 1 1.3

## Baby spawn
execute as @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,tag=maddons.egg_sack,nbt=!{HurtTime:0s}] at @s run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}
execute if predicate magical_addons:shared/25_percent as @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,tag=maddons.egg_sack,nbt=!{HurtTime:0s}] at @s run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}
tag @e[limit=1,type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] remove maddons.egg_sack 

advancement revoke @s only magical_addons:---/entity/hit_sculk_spider