#> iris:raycast/test_for_block
#
# @output
#   Result: 0
#   Success: 1 if a block other than air was hit, 0 otherwise

# See if the block is hit
execute if block ~ ~ ~ #iris:shape_groups/air run return fail
function iris:get_hitbox/block
execute unless data storage iris:data Shape[0] run return fail
return run function iris:raycast/check_intersection/loop