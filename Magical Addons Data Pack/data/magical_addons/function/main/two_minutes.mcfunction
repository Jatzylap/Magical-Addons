# main:two_minutes
# called by: main:first, main:two_minutes

## Turn unloadable display entities into blocks when players are far away
## OR lower your render distance

#execute at @a run tag @e[type=item_display,tag=maddons.block.unloadable,distance=..16] add maddons.block.unload_target 
#execute as @e[type=item_display,tag=maddons.block.unloadable,tag=!maddons.block.unload_target] at @s run function magical_addons:block/unload with entity @s item.components."minecraft:custom_data".magical_addons
#tag @e[type=item_display,tag=maddons.block.unloadable] remove maddons.block.unload_target

#schedule function magical_addons:main/one_minute 120s