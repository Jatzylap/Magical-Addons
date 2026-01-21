# dimension:the_end/load_block_entities
# called by: dimension:the_end/load_chunk

## Spawner
execute in overworld run fill -29999999 16 1600 -29999984 31 1615 air replace minecraft:spawner
clone from the_end ~ ~ ~ ~15 ~15 ~15 to overworld -29999999 16 1600 filtered minecraft:spawner
$execute in overworld run fill -29999999 16 1600 -29999984 31 1615 command_block{auto:1b,Command:'function magical_addons:block/vanilla/spawner/generate {dim:"the_end",x:$(x),y:$(y),z:$(z)}'} replace spawner