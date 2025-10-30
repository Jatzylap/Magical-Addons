# entity:sculk_spider/hit
# called by advancement: entity:hit_sculk_spider

## Hurt
execute as @e[type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s on passengers on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b
execute as @e[type=cave_spider,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s on passengers on passengers as @s[tag=maddons.entity.brain,tag=!maddons.entity.death,tag=!maddons.entity.silent] run playsound entity.spider.hurt hostile @a ~ ~ ~ 1

## Baby spawn

advancement revoke @s only magical_addons:---/entity/hit_sculk_spider