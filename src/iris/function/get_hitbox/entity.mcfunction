#> iris:get_hitbox/entity
#
# Returns the shape of the executing entity
#
# @within iris:raycast/test_for_entity
# @writes
#	storage iris:data shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Get entity dimensions


execute if entity @s[type=#iris:tree/branch_0] run function iris:get_hitbox/entity/tree/branch_0

execute if entity @s[type=#iris:tree/branch_1] run function iris:get_hitbox/entity/tree/branch_1
execute if entity @s[type=#iris:tree/branch_2] run function iris:get_hitbox/entity/tree/branch_2
execute if entity @s[type=#iris:tree/branch_3] run function iris:get_hitbox/entity/tree/branch_3
execute if entity @s[type=#iris:tree/branch_4] run function iris:get_hitbox/entity/tree/branch_4

function iris:get_hitbox/entity/scale
execute if predicate iris:baby run scoreboard players operation $entity_width iris /= $2 iris
execute if predicate iris:baby run scoreboard players operation $entity_height iris /= $2 iris

function iris:get_hitbox/entity/get_position
function iris:get_hitbox/entity/compute_bounding_box
tag @s add iris.possible_target
scoreboard players operation @s iris.id = $max_entity_id iris.id
execute store result storage iris:data shape[-1].entity_id int 1 run scoreboard players get @s iris.id
scoreboard players add $max_entity_id iris.id 1
