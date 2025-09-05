# entity:sculk_spider/set_nbt
# called by: entity:sculk_spider/summon

$data merge entity @s $(nbt)

execute on passengers run data merge entity @s[tag=maddons.body] {transformation:{scale:[0.0001,0.0001,0.0001]}}
execute on passengers on passengers run data merge entity @s[tag=maddons.head] {transformation:{scale:[0.0001,0.0001,0.0001]}}

execute on passengers as @s[tag=maddons.entity] run function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:entity/sculk_spider/loop"}
execute on passengers as @s[tag=maddons.entity] run function magical_addons:entity/sculk_spider/scale

tag @s add maddons.summoned