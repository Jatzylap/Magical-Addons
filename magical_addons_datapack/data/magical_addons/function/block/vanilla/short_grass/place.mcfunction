# block:vanilla/short_grass/place
# called by: dimension:the_aether/worldgen/set_blocks

execute if biome ~ ~ ~ magical_addons:sky_plains summon item_display run return run function magical_addons:block/vanilla/short_grass/place_sky_plains
#execute if biome ~ ~ ~ magical_addons:magnetic_forest run return run function magical_addons:block/vanilla/short_grass/place_magnetic_forest
execute if biome ~ ~ ~ #magical_addons:is_echo summon item_display run return run function magical_addons:block/vanilla/short_grass/place_echo