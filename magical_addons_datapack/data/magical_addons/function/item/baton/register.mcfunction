# item:baton/register
# called by: item:baton/use

data modify entity @s Rotation set from entity @p Rotation
data modify entity @s data.UUID set from entity @p UUID
data modify entity @s data.temp.UUID set from entity @p UUID
function magical_addons:dev/register_entity {id:"baton",cmd:"function magical_addons:item/baton/loop"}
tag @s add maddons.summoned