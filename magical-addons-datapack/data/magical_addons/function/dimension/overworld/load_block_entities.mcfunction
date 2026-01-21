# dimension:overworld/load_block_entities
# called by: dimension:overworld/load_chunk

## trial_spawner
fill -29999999 16 1600 -29999984 31 1615 air replace minecraft:trial_spawner
clone ~ ~ ~ ~15 ~15 ~15 -29999999 16 1600 filtered minecraft:trial_spawner
$fill -29999999 16 1600 -29999984 31 1615 command_block{auto:1b,Command:'function magical_addons:block/vanilla/trial_spawner/generate {dim:"overworld",x:$(x),y:$(y),z:$(z)}'} replace trial_spawner