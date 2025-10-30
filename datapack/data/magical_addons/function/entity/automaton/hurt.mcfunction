# entity:automaton/hurt
# called by: entity:automaton/loop

execute on vehicle store result score @s maddons.damage if data entity @s {HurtTime:0s} run return 0

execute on vehicle if score @s maddons.damage matches 0 store success score @s maddons.damage if entity @s[tag=!maddons.death,tag=!maddons.silent] on passengers as @s[tag=maddons.entity] on vehicle run playsound magical_addons:entity.automaton.ambient hostile @a ~ ~ ~ 2 2

return 1