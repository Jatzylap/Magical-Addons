# magical_addons:entity/automaton/hurt
# called by: magical_addons:entity/automaton/tick

## Hurt
execute if score @s[tag=maddons.entity.brain,tag=!maddons.entity.death,tag=!maddons.entity.silent] maddons.hurt matches 9 on vehicle on vehicle run playsound magical_addons:entity.automaton.hurt hostile @a ~ ~ ~
execute if score @s[tag=!maddons.entity.death,tag=!maddons.entity.silent] maddons.hurt matches 9 on vehicle on passengers run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}