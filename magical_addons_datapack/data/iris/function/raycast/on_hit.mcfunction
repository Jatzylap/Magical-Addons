#> iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See iris:get_target for full documentation
#
# @private
# @within iris:raycast/loop

# Write targeted block
data modify storage iris:output TargetedBlock set value [0, 0, 0]
execute store result storage iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] iris
execute store result storage iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] iris
execute store result storage iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] iris

# Write target position
data modify storage iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] iris
execute store result storage iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] iris
execute store result storage iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] iris
data modify storage iris:output TargetPosition.point set from storage iris:data TargetPoint
execute store result score ${x} iris run data get storage iris:output TargetPosition.point[0] 1000000
execute store result score ${y} iris run data get storage iris:output TargetPosition.point[1] 1000000
execute store result score ${z} iris run data get storage iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage iris:output TargetedBox set from storage iris:data TargetedBox

# Write targeted face
data modify storage iris:output TargetedFace set from storage iris:data TargetedFace
execute if data storage iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx iris matches 0.. run data modify storage iris:output TargetedFace.Direction set value "WEST"
execute if data storage iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx iris matches ..-1 run data modify storage iris:output TargetedFace.Direction set value "EAST"
execute if data storage iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy iris matches 0.. run data modify storage iris:output TargetedFace.Direction set value "DOWN"
execute if data storage iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy iris matches ..-1 run data modify storage iris:output TargetedFace.Direction set value "UP"
execute if data storage iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz iris matches 0.. run data modify storage iris:output TargetedFace.Direction set value "NORTH"
execute if data storage iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz iris matches ..-1 run data modify storage iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
scoreboard players operation $total_distance iris += $block_distance iris
execute store result storage iris:output Distance double 0.000001 run scoreboard players get $total_distance iris

# Run callback
function iris:raycast/macro_functions/callback with storage iris:args

return run scoreboard players get $total_distance iris