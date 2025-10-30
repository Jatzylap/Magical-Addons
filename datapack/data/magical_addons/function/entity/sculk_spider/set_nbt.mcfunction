# entity:sculk_spider/set_nbt
# called by: entity:sculk_spider/summon

## Set NBT
$data merge entity @s $(nbt)

## Set default pose
execute on passengers on passengers run function magical_addons:entity/sculk_spider/animations/idle/frames/0

## Set anger at nearest vulnerable entity
function magical_addons:entity/sculk_spider/anger

tag @s add maddons.summoned