# entity:goat/screaming/set
# called by: main:two_seconds

tag @s add maddons.entity
tag @s add maddons.goat.screaming
tag @s add maddons.entity.tickable

data merge entity @s {data:{magical_addons:{tick_cmd:"function magical_addons:entity/goat/screaming/loop"}}}