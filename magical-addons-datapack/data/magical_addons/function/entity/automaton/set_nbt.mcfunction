# entity:automaton/set_nbt
# called by: entity:automaton/summon

$data merge entity @s $(nbt)

## Scale
execute on passengers on passengers store result entity @s transformation.translation[1] float -0.00141 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s transformation.scale[0] float 0.0013333 store result entity @s transformation.scale[1] float 0.0013333 store result entity @s transformation.scale[2] float 0.0013333 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s[tag=maddons.entity.brain] shadow_radius float 0.000576 on vehicle on vehicle run attribute @s minecraft:scale get 1000

## Register UUID to remove bossbar when entity is unloaded
execute on passengers on passengers as @s[tag=maddons.entity.brain] run function magical_addons:entity/register

tag @s add maddons.entity.summoned