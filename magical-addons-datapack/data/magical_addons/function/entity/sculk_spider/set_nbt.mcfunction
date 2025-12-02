# entity:sculk_spider/set_nbt
# called by: entity:sculk_spider/summon

## Set NBT
$data merge entity @s $(nbt)

## Scale
execute on passengers on passengers store result entity @s transformation.translation[1] float -0.000167 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s transformation.scale[0] float 0.000667 store result entity @s transformation.scale[1] float 0.000667 store result entity @s transformation.scale[2] float 0.000667 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on passengers on passengers store result entity @s[tag=maddons.entity.brain] shadow_radius float .000576 on vehicle on vehicle run attribute @s minecraft:scale get 1000

## Set anger at nearest vulnerable entity
function magical_addons:entity/sculk_spider/anger

tag @s add maddons.entity.summoned