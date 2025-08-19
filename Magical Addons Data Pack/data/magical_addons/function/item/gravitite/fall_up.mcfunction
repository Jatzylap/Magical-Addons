# item:gravitite/fall_up
# called by: main:one_second, item:gravitite/drop

tag @s add maddons.gravitite

data merge entity @s {NoGravity:1}

function magical_addons:dev/register_entity {cmd:"function magical_addons:item/gravitite/loop"}