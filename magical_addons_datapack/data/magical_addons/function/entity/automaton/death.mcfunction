# entity:automaton/death
# called by: entity:automaton/loop

function magical_addons:entity/kill

playsound magical_addons:entity.automaton.death hostile @a ~ ~ ~ 1

execute positioned ~ ~-6.5 ~ run function magical_addons:entity/automaton/moves/death