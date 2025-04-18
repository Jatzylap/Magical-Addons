# item:wand/wand/register
# called by: item:wand/wand/use

data modify entity @s Rotation set from entity @p Rotation
data modify entity @s data.UUID set from entity @p UUID
data modify entity @s data.temp.UUID set from entity @p UUID
function magical_addons:dev/register_entity {id:"wand",cmd:"function magical_addons:item/wand/wand/loop"}
tag @s add maddons.summoned