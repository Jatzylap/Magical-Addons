# entity:automaton/death
# called by: entity:automaton/loop

execute on passengers run kill

kill

playsound magical_addons:entity.automaton.death hostile @a ~ ~ ~ 7

execute positioned ~ ~-6.5 ~ run function magical_addons:entity/automaton/moves/death