# block:save_target
# called by: player:loop

## Clear
$data remove storage magical_addons:data data.block_positions[{UUID:$(UUID)}]

## Position
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].x set from storage iris:output TargetedBlock[0]
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].y set from storage iris:output TargetedBlock[1]
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].z set from storage iris:output TargetedBlock[2]

## Face
data modify storage magical_addons:temp data.block.target.properties.face set from storage iris:output TargetedFace.Direction