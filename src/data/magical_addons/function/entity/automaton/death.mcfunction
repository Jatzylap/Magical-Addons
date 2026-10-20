# magical_addons:entity/automaton/death
# called by: magical_addons:entity/automaton/brain

execute if entity @s[tag=!maddons.entity.silent] run playsound magical_addons:entity.automaton.death hostile @a ~ ~ ~ 7

execute on passengers on passengers as @s[tag=maddons.entity.brain] positioned ~ ~-6.5 ~ run function magical_addons:entity/automaton/moves/death

execute on passengers on passengers run kill

execute on passengers run kill