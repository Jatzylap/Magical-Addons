# block:update_start
# called by: main:one_second

data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:block/update"
data modify storage iris:settings MaxRecursionDepth set value 32

execute anchored eyes positioned ^ ^ ^ run function iris:get_target