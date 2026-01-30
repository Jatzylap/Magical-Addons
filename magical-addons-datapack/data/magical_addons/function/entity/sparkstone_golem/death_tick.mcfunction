# entity:sparkstone_golem/death_tick
# called by: entity:tick

execute if score @s maddons.death matches ..16 run return run scoreboard players add @s maddons.death 1

execute on vehicle run function magical_addons:entity/sparkstone_golem/despawn