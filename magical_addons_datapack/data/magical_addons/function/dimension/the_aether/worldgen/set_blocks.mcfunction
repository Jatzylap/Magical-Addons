# dimension:the_aether/worldgen/set_blocks
# called by: dimension:the_aether/worldgen/set_chunk

## Short grass
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/short_grass/place"} replace potted_fern

## Ruby ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/ruby_ore/tick"} replace chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true]

## Water spring
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"setblock ~ ~ ~ water[level=0]"} replace water[level=0]
