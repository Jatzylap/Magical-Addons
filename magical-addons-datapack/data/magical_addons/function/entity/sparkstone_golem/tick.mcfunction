# entity:sparkstone_golem/tick
# called by: entity:tick

## Get nbt
execute store result score @s maddons.hurt on vehicle on vehicle run data get entity @s HurtTime

## Hurt
execute if score @s maddons.hurt matches 0 on vehicle on passengers run item modify entity @s[tag=maddons.entity.ai] contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[0f]}}
execute unless score @s maddons.hurt matches 0 run function magical_addons:entity/sparkstone_golem/hurt