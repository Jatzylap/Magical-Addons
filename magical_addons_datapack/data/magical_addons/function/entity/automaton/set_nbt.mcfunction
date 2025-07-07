# entity:automaton/set_nbt
# called by: entity:automaton/summon

$data merge entity @s $(nbt)

execute on passengers as @s[tag=maddons.entity] run function magical_addons:dev/register_entity {id:"automaton",cmd:"function magical_addons:entity/automaton/loop"}

execute on passengers as @s[tag=maddons.entity] run function magical_addons:entity/automaton/scale

tag @s add maddons.summoned