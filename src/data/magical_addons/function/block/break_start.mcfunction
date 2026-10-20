# block:break_start
# called by: player:tick

$execute if data storage magical_addons:data data.block_positions[{UUID:$(UUID)}] run function magical_addons:block/break_pos with storage magical_addons:data data.block_positions[{UUID:$(UUID)}]