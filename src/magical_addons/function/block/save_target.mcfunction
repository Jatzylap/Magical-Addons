# block:save_target
# called by: block:mine

## Clear
$data remove storage magical_addons:data data.block_positions[{UUID:$(UUID)}]

## Position
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].x set from storage iris:output block[0]
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].y set from storage iris:output block[1]
$data modify storage magical_addons:data data.block_positions[{UUID:$(UUID)}].z set from storage iris:output block[2]

## Normal
data modify storage magical_addons:temp data.block.hit_normal.x set from storage iris:output target.normal[0]
data modify storage magical_addons:temp data.block.hit_normal.y set from storage iris:output target.normal[1]
data modify storage magical_addons:temp data.block.hit_normal.z set from storage iris:output target.normal[2]