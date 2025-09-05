# magic:lightning_spell/register
# called by: magic:lightning_spell/start

data modify entity @s Rotation set from entity @n[tag=maddons.entity.spell.selected] Rotation
data modify entity @s item.components."minecraft:custom_data".magical_addons.UUID set from entity @n[tag=maddons.entity.spell.selected] UUID
data modify entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID set from entity @n[tag=maddons.entity.spell.selected] UUID
function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:magic/lightning_spell/loop"}
tag @s add maddons.summoned