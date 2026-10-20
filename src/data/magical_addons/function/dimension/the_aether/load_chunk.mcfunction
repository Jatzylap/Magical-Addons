# dimension:the_aether/load_chunk
# called by: dimension:the_aether/load_chunk/*

$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_aether/load_blocks
#$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_aether/load_block_entities {x:$(x),y:$(y),z:$(z)}
$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:the_aether data.chunks append value {x:$(x),y:$(y),z:$(z)}

execute store success score #maddons.shared.difficulty maddons.temp run difficulty
execute store success score #maddons.shared.gamerule maddons.temp run gamerule spawn_mobs
execute unless score #maddons.shared.difficulty maddons.temp matches 0 unless score #maddons.shared.gamerule maddons.temp matches 0 run function magical_addons:dimension/the_aether/load_entities