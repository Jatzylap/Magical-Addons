# block:custom/golden_oak_leaves/decay/find_log_2
# called by: block:custom/golden_oak_leaves/decay

## If persistent or is attached to log
execute if predicate magical_addons:block/golden_oak_leaves/will_survive run return 0

## If not attached to tree block
execute unless predicate magical_addons:block/golden_oak_leaves/may_survive run return 1

function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~1 ~',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~-1 ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~1 ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~-1',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~-1',path3:'~ ~ ~1',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~-1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~-1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~1 ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~-1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~1 ~ ~',path4:'~ ~ ~1',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~-1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~-1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~1 ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~ ~-1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~1 ~ ~',path5:'~ ~ ~1'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~-1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~1 ~ ~'}
execute if score @s maddons.temp matches 1 run return 0
function magical_addons:block/custom/golden_oak_leaves/decay/pathfinder {path1:'~-1 ~ ~',path2:'~ ~ ~1',path3:'~ ~-1 ~',path4:'~ ~-1 ~',path5:'~ ~-1 ~'}
return 0