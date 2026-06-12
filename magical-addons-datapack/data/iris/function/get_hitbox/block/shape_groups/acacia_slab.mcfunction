execute if block ~ ~ ~ #iris:shape_groups/acacia_slab[type=top] run data modify storage iris:data shape set value [{min: [0.0d, 0.5d, 0.0d], max: [1.0d, 1.0d, 1.0d]}]
execute if block ~ ~ ~ #iris:shape_groups/acacia_slab[type=bottom] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 0.5d, 1.0d]}]
execute if block ~ ~ ~ #iris:shape_groups/acacia_slab[type=double] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 1.0d, 1.0d]}]
