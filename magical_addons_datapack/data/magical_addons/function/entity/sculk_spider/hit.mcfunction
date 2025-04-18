# entity:sculk_spider/hit
# called by advancement: entity:hit_sculk_spider

## Egg sack break
execute as @n[type=cave_spider,tag=maddons.egg_sack,tag=maddons.sculk_spider,nbt=!{HurtTime:0s}] at @s run function magical_addons:entity/sculk_spider/moves/baby

advancement revoke @s only magical_addons:---/entity/hit_sculk_spider