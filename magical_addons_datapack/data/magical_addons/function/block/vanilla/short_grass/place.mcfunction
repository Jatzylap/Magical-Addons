# block:vanilla/short_grass/place
# called by: block:place_end

### Temporary
execute if predicate magical_addons:shared/0.1_percent run function magical_addons:entity/flying_cow/summon {nbt:"s:1"}

setblock ~ ~ ~ structure_void
execute if biome ~ ~ ~ magical_addons:sky_plains summon item_display run return run function magical_addons:block/vanilla/short_grass/place_sky_plains
#execute if biome ~ ~ ~ magical_addons:magnetic_forest run return run function magical_addons:block/vanilla/short_grass/place_magnetic_forest