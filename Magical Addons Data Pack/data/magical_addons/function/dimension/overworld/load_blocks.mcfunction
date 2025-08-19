# dimension:overworld/load_blocks
# called by: dimension:overworld/load_chunk

## Spawner
execute in magical_addons:---/overworld run forceload add ~ ~
clone from overworld ~ ~ ~ ~15 ~15 ~15 to magical_addons:---/overworld ~ ~ ~ filtered minecraft:spawner
execute in magical_addons:---/overworld run fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/spawner/generate_overworld"} replace spawner

## Gold ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/generate_gold_ore"} replace gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/generate_nether_gold_ore"} replace nether_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/generate_deepslate_gold_ore"} replace deepslate_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/generate_gilded_blackstone"} replace gilded_blackstone

## Redstone ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/generate_redstone_ore"} replace redstone_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/generate_deepslate_redstone_ore"} replace deepslate_redstone_ore

## Lapis ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/generate_lapis_ore"} replace lapis_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/generate_deepslate_lapis_ore"} replace deepslate_lapis_ore

## Emerald ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/generate_emerald_ore"} replace emerald_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/generate_deepslate_emerald_ore"} replace deepslate_emerald_ore

## Diamond ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/generate_diamond_ore"} replace diamond_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/generate_deepslate_diamond_ore"} replace deepslate_diamond_ore

## Slabs
fill ~ ~ ~ ~15 ~15 ~15 smooth_stone replace smooth_stone_slab[type=double]
fill ~ ~ ~ ~15 ~15 ~15 birch_planks replace birch_slab[type=double]
fill ~ ~ ~ ~15 ~15 ~15 cobblestone replace cobblestone_slab[type=double]
fill ~ ~ ~ ~15 ~15 ~15 spruce_planks replace spruce_slab[type=double]
fill ~ ~ ~ ~15 ~15 ~15 stone replace stone_slab[type=double]
fill ~ ~ ~ ~15 ~15 ~15 bricks replace brick_slab[type=double]

## Entities
execute if biome ~ ~ ~ deep_dark if predicate magical_addons:shared/1_percent run function magical_addons:entity/sculk_spider/spawn