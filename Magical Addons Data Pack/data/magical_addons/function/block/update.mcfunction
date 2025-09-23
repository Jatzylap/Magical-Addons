# block:update
# called by: block:update_start

## Add block light
execute unless block ~ ~ ~ #magical_addons:air_like if entity @n[distance=...5,type=item_display,tag=maddons.light] if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run return run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

## Remove block light
execute unless predicate magical_addons:block/visible run return run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "air"
execute if entity @e[distance=.01..1.5,type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}}] run return run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "air"

## Break block
execute at @n[distance=...5,type=item_display,tag=maddons.block,tag=!maddons.block.no_break] run function magical_addons:block/break with entity @n[distance=...5,type=item_display,tag=maddons.block,tag=!maddons.block.no_break] data.magical_addons