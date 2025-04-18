# block:update_start
# called by: main:one_second

## Clear
data remove storage iris:output TargetedBlock
data remove storage iris:output TargetPosition
data remove storage iris:output Distance
data remove storage iris:output TargetedBox
data remove storage iris:output TargetedFace

## Set
data modify storage iris:args command set value "execute align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/update"
scoreboard players set $min_distance iris 2147483647
scoreboard players set $max_entity_id iris 0
scoreboard players set $total_distance iris 0

## Get
execute summon minecraft:marker run function iris:get_position/main

## Run
scoreboard players set $max_depth iris 32
function iris:raycast/loop