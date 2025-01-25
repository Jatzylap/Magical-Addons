# dimension:overworld/worldgen/set_blocks
# called by: dimension:overworld/worldgen/new_chunks

## Chiseled bookshelf ==> Seems to replace custom blocks ???
#clone from overworld ~ ~ ~ ~15 ~15 ~15 to magical_addons:---/overworld ~ ~ ~ filtered chiseled_bookshelf
#fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/vanilla/chiseled_bookshelf/tick {dimension:\"overworld\"}"} replace chiseled_bookshelf

## Gold ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/place {id:\"gold_ore\"}"} replace gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/place {id:\"nether_gold_ore\"}"} replace nether_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/place {id:\"deepslate_gold_ore\"}"} replace deepslate_gold_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/gold_ores/place {id:\"gilded_blackstone\"}"} replace gilded_blackstone

## Redstone ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/place {id:\"redstone_ore\"}"} replace redstone_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/redstone_ores/place {id:\"deepslate_redstone_ore\"}"} replace deepslate_redstone_ore

## Lapis ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/place {id:\"lapis_ore\"}"} replace lapis_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/lapis_ores/place {id:\"deepslate_lapis_ore\"}"} replace deepslate_lapis_ore

## Emerald ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/place {id:\"emerald_ore\"}"} replace emerald_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/emerald_ores/place {id:\"deepslate_emerald_ore\"}"} replace deepslate_emerald_ore

## Diamond ores
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/place {id:\"diamond_ore\"}"} replace diamond_ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/group/vanilla/diamond_ores/place {id:\"deepslate_diamond_ore\"}"} replace deepslate_diamond_ore

## Quartz ore
fill ~ ~ ~ ~15 ~15 ~15 command_block{auto:1b,Command:"function magical_addons:block/custom/quartz_ore/tick"} replace light[level=0]