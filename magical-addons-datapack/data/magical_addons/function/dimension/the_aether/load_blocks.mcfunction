# dimension:the_aether/load_blocks
# called by: dimension:the_aether/load_chunk

## Lavender bush
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"execute summon item_display run function magical_addons:block/custom/lavender_bush/generate"} replace light[level=0]

## Sparkstone cluster
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/sparkstone_cluster/generate"} replace light[level=1]

## Large sparkstone bud
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/large_sparkstone_bud/generate"} replace light[level=2]

## Medium sparkstone bud
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/medium_sparkstone_bud/generate"} replace light[level=3]

## Small sparkstone bud
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/small_sparkstone_bud/generate"} replace light[level=4]