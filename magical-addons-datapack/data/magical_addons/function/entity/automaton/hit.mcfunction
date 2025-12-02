# entity:automaton/hit
# called by advancement: entity:hit_automaton

## Hurt
execute as @e[limit=1,type=husk,tag=maddons.automaton,nbt=!{HurtTime:0s}] at @s on passengers on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b
execute as @e[limit=1,type=husk,tag=maddons.automaton,nbt=!{HurtTime:0s}] at @s on passengers on passengers as @s[tag=maddons.entity.brain,tag=!maddons.entity.death,tag=!maddons.entity.silent] run playsound magical_addons:entity.automaton.hurt hostile @a ~ ~ ~ 1

advancement revoke @s only magical_addons:---/entity/hit_automaton