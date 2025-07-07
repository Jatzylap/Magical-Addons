# block:custom/gravitite_ore/fall_up
# called by: block:group/gravitite/fall_up

setblock ~ ~ ~ air

tag @s add maddons.block.no_break

function magical_addons:dev/register_entity {cmd:"function magical_addons:block/custom/gravitite_ore/tick"}