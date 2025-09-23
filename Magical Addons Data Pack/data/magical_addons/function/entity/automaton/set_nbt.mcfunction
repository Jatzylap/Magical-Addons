# entity:automaton/set_nbt
# called by: entity:automaton/summon

$data merge entity @s $(nbt)

execute on passengers as @s[tag=maddons.entity] run function magical_addons:entity/automaton/scale

## Register UUID to potentially remove bossbar
execute on passengers as @s[tag=maddons.entity] run function magical_addons:entity/register

tag @s add maddons.summoned