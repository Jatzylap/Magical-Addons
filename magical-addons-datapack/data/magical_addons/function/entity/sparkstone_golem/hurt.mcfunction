# entity:sparkstone_golem/hurt
# called by: entity:sparkstone_golem/tick

execute if score @s[tag=!maddons.entity.death,tag=!maddons.entity.silent] maddons.hurt matches 9 at @s as @a run playsound magical_addons:entity.sparkstone_golem.hurt hostile @a ~ ~ ~ 0.25
execute on vehicle on passengers run item modify entity @s[tag=maddons.entity.ai] contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}