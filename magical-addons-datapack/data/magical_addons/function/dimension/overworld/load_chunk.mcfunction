# dimension:overworld/load_chunk
# called by: dimension:overworld/load_chunk/*

$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/overworld/load_blocks
$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/overworld/load_block_entities {x:$(x),y:$(y),z:$(z)}
$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:overworld data.chunks append value {x:$(x),y:$(y),z:$(z)}

execute store success score #maddons.entity.load maddons.temp run gamerule doMobSpawning
execute if score #maddons.entity.load maddons.temp matches 1 run function magical_addons:dimension/overworld/load_entities