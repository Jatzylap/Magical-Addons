# entity:automaton/effects/jump_land
# called by: entity:automaton/animate/jump

## Sound
execute on vehicle on vehicle at @s unless block ~ ~-1 ~ #magical_addons:non_collidable at @s as @a run playsound magical_addons:entity.automaton.slam hostile @a ~ ~ ~ 7

## Damage
execute on vehicle on vehicle at @s as @e[distance=..6,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 8 mob_attack by @n[tag=maddons.automaton,tag=maddons.vehicle]

## Knockback
scoreboard players set $strength player_motion.api.launch -10000
execute on vehicle on vehicle at @s as @e[distance=..6,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet run function magical_addons:dev/set_motion_vector {power:-1.5}
execute on vehicle on vehicle as @a[distance=..6] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet run function player_motion:api/launch_looking

## Particles
execute on vehicle on vehicle at @s if block ~ ~-1 ~ grass_block run particle block{block_state:"dirt"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ dirt run particle block{block_state:"dirt"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ sand run particle block{block_state:"sand"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ stone run particle block{block_state:"stone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ cobblestone run particle block{block_state:"cobblestone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ gray_stained_glass run particle block{block_state:"gray_stained_glass"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ mossy_cobblestone run particle block{block_state:"mossy_cobblestone"} ~ ~ ~ 2 0 2 0 400
execute on vehicle on vehicle at @s if block ~ ~-1 ~ stone_bricks run particle block{block_state:"stone_bricks"} ~ ~ ~ 2 0 2 0 400

tag @s remove maddons.jump_land