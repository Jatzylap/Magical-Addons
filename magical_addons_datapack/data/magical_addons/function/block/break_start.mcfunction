# block:break_start
# called by: player:loop

$execute positioned $(x) $(y) $(z) align xyz positioned ~.5 ~.5 ~.5 at @n[type=item_display,tag=maddons.block,tag=!maddons.block.no_break,distance=...5] run function magical_addons:block/break with entity @n[type=item_display,tag=maddons.block,tag=!maddons.block.no_break,distance=...5] item.components."minecraft:custom_data".magical_addons