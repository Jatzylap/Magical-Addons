# entity:automaton/effects/shoot_spell
# called by: entity:automaton/animate/shoot

execute store result score @s maddons.temp run random value 0..3

playsound magical_addons:entity.automaton.shoot hostile @a ~ ~ ~ 3

execute if score @s maddons.temp matches 0 run function magical_addons:magic/damaging_spell/start
execute if score @s maddons.temp matches 1 run function magical_addons:magic/fire_spell/start
execute if score @s maddons.temp matches 2 run function magical_addons:magic/lightning_spell/start
execute if score @s maddons.temp matches 3 run function magical_addons:magic/wind_spell/start