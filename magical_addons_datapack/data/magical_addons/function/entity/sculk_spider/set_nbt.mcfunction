# entity:sculk_spider/set_nbt
# called by: entity:sculk_spider/summon

$data merge entity @s {$(nbt)}

execute on passengers run data merge entity @s[tag=maddons.body] {transformation:{scale:[0.001,0.001,0.001]}}
execute on passengers on passengers run data merge entity @s[tag=maddons.head] {transformation:{scale:[0.001,0.001,0.001]}}

execute on passengers as @s[tag=maddons.entity] run function magical_addons:entity/sculk_spider/scale
execute on passengers as @s[tag=maddons.entity] run function magical_addons:dev/register_entity {id:"sculk_spider",cmd:"function magical_addons:entity/sculk_spider/loop"}

tag @s add maddons.summoned