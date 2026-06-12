# magical_addons:entity/automaton/tick
# called by: magical_addons:entity/tick

## Get nbt
execute store result score @s maddons.hurt on vehicle on vehicle run data get entity @s HurtTime

## Hurt
execute if score @s maddons.hurt matches 0 on vehicle on passengers run item modify entity @s[tag=maddons.bone] contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}
execute unless score @s maddons.hurt matches 0 run function magical_addons:entity/automaton/hurt

## Step
execute on vehicle on passengers unless score @s maddons.cooldown matches 0.. run item modify entity @s contents magical_addons:entity/animate/automaton/step