# block:group/custom/leaves/decay
# called by: main:half_second

## IF persistent or attached to trunk THEN survive
$execute if predicate magical_addons:block/$(id)/will_survive run return fail

## IF ELSE not attached to leaves THEN decay
$execute unless predicate magical_addons:block/$(id)/may_survive_sides_all run return run function magical_addons:block/custom/$(id)/decay

## ELSE start breadth-first search for trunk
$execute if predicate magical_addons:shared/25_percent run function magical_addons:block/custom/$(id)/pathfind