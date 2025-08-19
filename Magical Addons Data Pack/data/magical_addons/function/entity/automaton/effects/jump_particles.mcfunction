# entity:automaton/effects/jump_particles
# called by: entity:automaton/animate/jump

execute on vehicle at @s if block ~ ~-1 ~ grass_block run particle block{block_state:"dirt"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ dirt run particle block{block_state:"dirt"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ sand run particle block{block_state:"sand"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ stone run particle block{block_state:"stone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ cobblestone run particle block{block_state:"cobblestone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ gray_stained_glass run particle block{block_state:"gray_stained_glass"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ mossy_cobblestone run particle block{block_state:"mossy_cobblestone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle at @s if block ~ ~-1 ~ stone_bricks run particle block{block_state:"stone_bricks"} ~ ~ ~ 2 0 2 0 400