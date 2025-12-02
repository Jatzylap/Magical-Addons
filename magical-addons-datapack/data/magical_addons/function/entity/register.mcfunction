# entity:register
# called by: main:one_second, entity/*/set_nbt

## Register to potentially unregister
function gu:convert with entity @s
function magical_addons:entity/register_end with storage gu:main
tag @s add maddons.entity.registered