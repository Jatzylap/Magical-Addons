# block:update_start
# called by: main:one_second

# Reset tags, scores and storage
tag @e remove iris.targeted_entity
tag @e remove iris.possible_target
kill @e[type=minecraft:marker, tag=iris.targeted_block]
scoreboard players reset * iris.id

## Clear
data modify storage iris:output TargetType set value "NONE"
data remove storage iris:output TargetedBlock
data remove storage iris:output TargetedEntity
data remove storage iris:output TargetPosition
data remove storage iris:output Distance
data remove storage iris:output TargetedBox
data remove storage iris:output TargetedFace

## Set
data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "execute align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/update"
scoreboard players set $depth iris 0
scoreboard players set $min_distance iris 2147483647
scoreboard players set $max_entity_id iris 0
scoreboard players set $total_distance iris 0

## Get
execute summon minecraft:marker run function iris:get_position/main

## Run
tag @s add iris.executing
scoreboard players set $max_depth iris 32
function iris:raycast/loop