# entity:land
# called by: player:step_on_block

$data merge storage magical_addons:temp {data:{particle:{land_on_block:{id:"$(id)"}}}}

execute store result storage magical_addons:temp data.particle.land_on_block.count int 0.1 run scoreboard players get @s maddons.fall

function magical_addons:particle/land_on_block with storage magical_addons:temp data.particle.land_on_block
