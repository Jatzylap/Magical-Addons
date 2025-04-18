# dimension:the_echo/worldgen/set_blocks
# called by: dimension:the_echo/worldgen/set_chunk

## Short grass
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/short_grass/place"} replace light[level=0]

## Sparkstone cluster
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/sparkstone_cluster/tick"} replace light[level=1]
