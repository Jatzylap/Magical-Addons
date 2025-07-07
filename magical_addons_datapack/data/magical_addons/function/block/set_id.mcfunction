# block:set_id
# called by: block:group/vanilla/chiseled_bookshelf/return_check, block:mine_scan, player:event/walk_on_block, player:event/sprint_on_block, entity:step, entity:tile_step

## For naturally-generated blocks ##

### Sparkstone
execute if block ~ ~ ~ smooth_stone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/sparkstone/generate

### Quartz ore
execute if block ~ ~ ~ cobblestone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/quartz_ore/generate

### Gravitite ore
execute if block ~ ~ ~ stone_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/gravitite_ore/generate

### Golden oak leaves
execute if block ~ ~ ~ spruce_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/golden_oak_leaves/generate

### Skyroot leaves
execute if block ~ ~ ~ birch_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/skyroot_leaves/generate

### Skyroot log - axis y
execute if block ~ ~ ~ oak_slab[type=double] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/skyroot_log/generate

### Brewing stand
execute if block ~ ~ ~ minecraft:brewing_stand align xyz positioned ~.5 ~.5 ~.5 unless entity @n[type=item_display,distance=...5] run function magical_addons:block/vanilla/brewing_stand/place
