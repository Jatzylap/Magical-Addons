# item:diamond_wand/debug/raycast
# called by advancement: shared:place_diamond_wand

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
data modify storage iris:settings Callback set value "execute align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:item/diamond_wand/debug/scan"
scoreboard players set $depth iris 0
scoreboard players set $min_distance iris 2147483647
scoreboard players set $max_entity_id iris 0
scoreboard players set $total_distance iris 0

## Get
execute anchored eyes positioned ^ ^ ^ summon minecraft:marker run function iris:get_position/main

## Run
tag @s add iris.executing
execute store result score $max_depth iris run attribute @s minecraft:block_interaction_range get
scoreboard players operation $max_depth iris *= #2 maddons.constant
execute anchored eyes positioned ^ ^ ^ run function iris:raycast/loop

## Reset
advancement revoke @s from magical_addons:---/shared/root