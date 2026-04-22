# magic:commanding_spell/hit_block
# called by: magic:commanding_spell/cast

## Clear cache
data remove storage magical_addons:temp data.entity

## Spawn target
execute unless block ~ ~ ~ spawner{components:{"minecraft:custom_data":{magical_addons:{}}}} run function magical_addons:dev/set_block_to_entity
execute if block ~ ~ ~ spawner{components:{"minecraft:custom_data":{magical_addons:{}}}} run function magical_addons:dev/set_custom_block_to_entity with block ~ ~ ~ components."minecraft:custom_data".magical_addons
setblock ~ ~ ~ air

## Get target entity UUID
function gu:convert with entity @n[tag=maddons.falling_block,tag=!maddons.falling_custom_block]
data modify storage magical_addons:temp data.entity.target set from storage gu:main out
tag @n[type=falling_block,tag=maddons.falling_block] remove maddons.falling_block
tag @n[type=armor_stand,tag=maddons.falling_block] add maddons.falling_custom_block

## Get caster UUID
data modify storage magical_addons:temp data.entity.UUID set from entity @s UUID

## Get distance from target
execute store result storage magical_addons:temp data.entity.distance int 1 run scoreboard players get @s maddons.commanding_spell

## Start tracking
function magical_addons:magic/commanding_spell/track with storage magical_addons:temp data.entity