# block:mine_save
# called by: block:mine_start

execute store result score @s maddons.ray.x run data get storage iris:output TargetedBlock[0]
execute store result score @s maddons.ray.y run data get storage iris:output TargetedBlock[1]
execute store result score @s maddons.ray.z run data get storage iris:output TargetedBlock[2]
data modify storage magical_addons:temp data.block.target.properties.face set from storage iris:output TargetedFace.Direction
$execute positioned ^ ^ ^$(Distance) store success storage magical_addons:temp data.block.target.properties.waterlogged byte 1 if block ~ ~ ~ water