# dimension:the_end/worldgen/set_blocks
# called by: dimension:the_end/worldgen/new_chunks

## Spawner
execute in magical_addons:---/the_end run forceload add ~ ~
clone from the_end ~ ~ ~ ~15 ~15 ~15 to magical_addons:---/the_end ~ ~ ~ filtered spawner
execute in magical_addons:---/the_end run fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/spawner/tick_the_end"} replace spawner

## Gold ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/tick_gold_ore"} replace gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/tick_nether_gold_ore"} replace nether_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/tick_deepslate_gold_ore"} replace deepslate_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/tick_gilded_blackstone"} replace gilded_blackstone

## Redstone ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/tick_redstone_ore"} replace redstone_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/tick_deepslate_redstone_ore"} replace deepslate_redstone_ore

## Lapis ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/tick_lapis_ore"} replace lapis_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/tick_deepslate_lapis_ore"} replace deepslate_lapis_ore

## Emerald ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/tick_emerald_ore"} replace emerald_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/tick_deepslate_emerald_ore"} replace deepslate_emerald_ore

## Diamond ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/tick_diamond_ore"} replace diamond_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/tick_deepslate_diamond_ore"} replace deepslate_diamond_ore