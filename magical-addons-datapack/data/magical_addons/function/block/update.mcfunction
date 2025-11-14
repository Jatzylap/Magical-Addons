# block:update
# called by: block:update_start

## Break block
execute at @n[distance=...5,type=item_display,tag=maddons.block,tag=!maddons.block.no_break] run function magical_addons:block/break with entity @n[distance=...5,type=item_display,tag=maddons.block,tag=!maddons.block.no_break] data.magical_addons