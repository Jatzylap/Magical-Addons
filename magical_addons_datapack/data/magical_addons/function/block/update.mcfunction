# block:update
# called by: item:loop

## Custom block loot ===> Called for when you break the block underneath sparkstone cluster to get item
execute as @n[distance=...5,type=item_display,tag=maddons.block] unless predicate magical_addons:block/placed run function magical_addons:block/break