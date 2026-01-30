# entity:sparkstone_golem/set_nbt
# called by: entity:sparkstone_golem/summon

## Set NBT
$data merge entity @s $(nbt)

## Scale
execute on passengers on passengers store result entity @s[tag=maddons.entity.brain] shadow_radius float 0.00015 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s transformation.translation[1] float 0.00001 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s transformation.scale[0] float 0.0005 store result entity @s transformation.scale[1] float 0.0005 store result entity @s transformation.scale[2] float 0.0005 on vehicle on vehicle run attribute @s minecraft:scale get 1000

tag @s add maddons.entity.summoned