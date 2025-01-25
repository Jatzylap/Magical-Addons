# block:break_start
# called by: player:loop

$execute positioned $(x) $(y) $(z) align xyz positioned ~.5 ~.5 ~.5 as @n[type=item_display,tag=maddons.block,distance=...5] unless predicate magical_addons:block/placed run function magical_addons:block/break