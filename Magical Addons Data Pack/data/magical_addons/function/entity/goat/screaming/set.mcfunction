# entity:behaviours/screaming_goat/set
# called by: main:two_seconds

tag @s add maddons.entity
tag @s add maddons.goat.screaming

function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:entity/goat/screaming/loop"}