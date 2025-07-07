# block:custom/gravitite_ore/raycast
# called by advancement: block:place/*

## Clear
data remove storage iris:output TargetedBlock
data remove storage iris:output TargetPosition
data remove storage iris:output Distance
data remove storage iris:output TargetedBox
data remove storage iris:output TargetedFace

## Set
data modify storage iris:args command set value "execute align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/gravitite_ore/scan"
scoreboard players set $min_distance iris 2147483647
scoreboard players set $max_entity_id iris 0
scoreboard players set $total_distance iris 0

## Get
execute anchored eyes positioned ^ ^ ^ summon minecraft:marker run function iris:get_position/main

## Run
execute store result score $max_depth iris run attribute @s minecraft:block_interaction_range get
scoreboard players operation $max_depth iris *= #2 maddons.constant
execute anchored eyes positioned ^ ^ ^ run function iris:raycast/loop

## Reset
advancement revoke @s from magical_addons:---/block/place