# entity:sparkstone_golem/tick
# called by: entity:tick

## Get nbt
execute store result score @s maddons.hurt on vehicle on vehicle run data get entity @s HurtTime

## Hurt
execute if score @s maddons.hurt matches 0 on vehicle on passengers run item modify entity @s[tag=maddons.entity.ai] contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[0f]}}
execute unless score @s maddons.hurt matches 0 run function magical_addons:entity/sparkstone_golem/hurt

## Step sound
execute on vehicle on vehicle run tag @s remove maddons.entity.land
execute on vehicle on vehicle at @s[tag=maddons.entity.jump] if data entity @s {OnGround:1b} run tag @s add maddons.entity.land
execute on vehicle on vehicle at @s[tag=maddons.entity.land] as @a run playsound block.anvil.hit hostile @a ~ ~ ~ 0.5 0
execute on vehicle on vehicle at @s[tag=maddons.entity.land] run tag @s remove maddons.entity.jump

## Damage
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.entity.death] on vehicle on vehicle at @s[tag=maddons.entity.land] run damage @n[tag=!maddons.sparkstone_golem,type=!#magical_addons:invulnerable,distance=..2.5] 4.0 mob_attack by @s