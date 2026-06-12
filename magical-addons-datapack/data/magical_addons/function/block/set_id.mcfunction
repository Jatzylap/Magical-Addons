# block:set_id
# called by: block:mine_scan, player:walk_on_block, player:sprint_on_block, entity:step, entity:tile_step

## World generatable
### Sparkstone
execute if block ~ ~ ~ smooth_stone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/sparkstone/generate

### Quartz Ore
execute if block ~ ~ ~ cobblestone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/quartz_ore/generate

### Gravitite Ore
execute if block ~ ~ ~ stone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/gravitite_ore/generate

### Golden Oak Leaves
execute if block ~ ~ ~ spruce_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/golden_oak_leaves/generate

### Brewing Stand
execute if block ~ ~ ~ minecraft:brewing_stand align xyz positioned ~.5 ~.5 ~.5 unless entity @n[type=item_display,distance=...5] run function magical_addons:block/vanilla/brewing_stand/place
