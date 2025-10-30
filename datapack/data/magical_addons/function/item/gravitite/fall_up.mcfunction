# item:gravitite/fall_up
# called by: main:half_second, item:gravitite/drop

tag @s add maddons.gravitite
tag @s add maddons.entity.tickable

data merge entity @s {NoGravity:1,data:{magical_addons:{tick_cmd:"function magical_addons:item/gravitite/loop"}}}