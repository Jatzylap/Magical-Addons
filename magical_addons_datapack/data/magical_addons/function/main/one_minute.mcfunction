# main:one_minute
# called by: main:first, main:one_minute

## Turn temporary display entities into blocks when players are far away (improves TPS)
execute at @a as @e[type=item_display,tag=maddons.block.temp,limit=100,distance=16..] at @s run function magical_addons:block/group/custom/temp/return with entity @s item.components."minecraft:custom_data".magical_addons 

schedule function magical_addons:main/one_minute 60s