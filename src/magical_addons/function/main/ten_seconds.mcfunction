# main:ten_seconds
# called by: main:first, main:ten_seconds

## anger
execute at @a as @e[type=cave_spider,tag=maddons.sculk_spider] at @s run function magical_addons:entity/sculk_spider/anger

## shared
schedule function magical_addons:main/ten_seconds 10s