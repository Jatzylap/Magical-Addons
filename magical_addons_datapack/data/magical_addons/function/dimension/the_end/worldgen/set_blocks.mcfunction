# dimension:the_end/worldgen/set_blocks
# called by: dimension:the_end/worldgen/new_chunks

## Spawner
execute in magical_addons:---/the_end run forceload add ~ ~
clone from the_end ~ ~ ~ ~15 ~15 ~15 to magical_addons:---/the_end ~ ~ ~ filtered #magical_addons:block_entity_placeholders
execute in magical_addons:---/the_end run fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/spawner/generate_the_end"} replace spawner

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