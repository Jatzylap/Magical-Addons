# dimension:overworld/load_block_entities
# called by: dimension:overworld/load_chunk

## Spawner
fill -29999999 16 1600 -29999984 31 1615 air replace minecraft:spawner
clone ~ ~ ~ ~15 ~15 ~15 -29999999 16 1600 filtered minecraft:spawner
$fill -29999999 16 1600 -29999984 31 1615 command_block{auto:1b,Command:'function magical_addons:block/vanilla/spawner/generate {dim:"overworld",x:$(x),y:$(y),z:$(z)}'} replace spawner