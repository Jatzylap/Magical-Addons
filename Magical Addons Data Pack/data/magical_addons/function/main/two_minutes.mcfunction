# main:two_minutes
# called by: main:first, main:two_minutes

## Turn unloadable display entities into blocks when players are far away (improves TPS)

execute at @a as @e[type=item_display,tag=maddons.block.unloadable] at @s run function magical_addons:block/unload with entity @s item.components."minecraft:custom_data".magical_addons

schedule function magical_addons:main/one_minute 120s

##### Perhaps this should apply to ALL blocks ? (see idea below)
######## custom full blocks / leaf blocks = double slabs
######## else = spawners with id