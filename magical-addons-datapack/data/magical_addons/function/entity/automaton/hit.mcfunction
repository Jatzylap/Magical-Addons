# entity:automaton/hit
# called by advancement: entity:hit_automaton

## Hurt
execute as @e[limit=1,type=husk,tag=maddons.automaton,nbt=!{HurtTime:0s}] at @s on passengers on passengers run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
execute as @e[limit=1,type=husk,tag=maddons.automaton,nbt=!{HurtTime:0s}] at @s on passengers on passengers as @s[tag=maddons.entity.brain,tag=!maddons.entity.death,tag=!maddons.entity.silent] on vehicle on vehicle at @s as @a run playsound magical_addons:entity.automaton.hurt hostile @a ~ ~ ~

advancement revoke @s only magical_addons:---/entity/hit_automaton