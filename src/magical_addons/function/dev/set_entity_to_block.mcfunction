kill
execute align xyz positioned ~.5 ~.5 ~.5 run setblock ~ ~ ~ air destroy
execute align xyz positioned ~.5 ~.5 ~.5 as @n[type=item_display,tag=maddons.block,tag=!maddons.block.no_break,distance=...5] at @s run function magical_addons:block/break with entity @s data.magical_addons

## Vanilla
$execute if entity @s[type=falling_block] align xyz positioned ~.5 ~.5 ~.5 run setblock ~ ~ ~ $(Name)

## Custom
$execute if entity @s[type=#magical_addons:display] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:dev/set_custom_block {id:"$(Name)"}