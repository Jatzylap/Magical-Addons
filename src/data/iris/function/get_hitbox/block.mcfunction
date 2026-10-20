#> iris:get_hitbox/block
#
# Returns the shape of the current block
#
# @within iris:raycast/test_for_block
# @output
#	storage iris:data shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}


execute if block ~ ~ ~ #iris:tree/branch_0 run function iris:get_hitbox/block/tree/branch_0
execute if block ~ ~ ~ #iris:tree/branch_1 run function iris:get_hitbox/block/tree/branch_1
execute if block ~ ~ ~ #iris:tree/branch_2 run function iris:get_hitbox/block/tree/branch_2
execute if block ~ ~ ~ #iris:tree/branch_3 run function iris:get_hitbox/block/tree/branch_3
execute if block ~ ~ ~ #iris:tree/branch_4 run function iris:get_hitbox/block/tree/branch_4
execute if block ~ ~ ~ #iris:has_block_offset run function iris:get_hitbox/block/offset
