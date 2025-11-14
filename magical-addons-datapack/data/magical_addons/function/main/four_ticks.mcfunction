# main:half_second
# called by: main:first, main:four_ticks

## mob brain
execute as @e[type=item_display,tag=maddons.entity.brain] at @s run function magical_addons:entity/brain with entity @s data.magical_addons

## shared
schedule function magical_addons:main/four_ticks 4