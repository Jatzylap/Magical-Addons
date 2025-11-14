# dimension:the_end/load_chunk
# called by: dimension:the_end/load_chunk/*

$execute unless data storage magical_addons:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_end/load_blocks
$execute unless data storage magical_addons:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_end/load_block_entities {x:$(x),y:$(y),z:$(z)}
$execute unless data storage magical_addons:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run return run data modify storage magical_addons:the_end data.chunks append value {x:$(x),y:$(y),z:$(z)}

execute store success score #maddons.entity.load maddons.temp run gamerule doMobSpawning
execute if score #maddons.entity.load maddons.temp matches 1 run function magical_addons:dimension/the_end/load_entities