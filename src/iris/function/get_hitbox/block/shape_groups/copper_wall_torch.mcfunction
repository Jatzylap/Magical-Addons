execute if block ~ ~ ~ #iris:shape_groups/copper_wall_torch[facing=north] run data modify storage iris:data shape set value [{min: [0.34375d, 0.1875d, 0.6875d], max: [0.65625d, 0.8125d, 1.0d]}]
execute if block ~ ~ ~ #iris:shape_groups/copper_wall_torch[facing=south] run data modify storage iris:data shape set value [{min: [0.34375d, 0.1875d, 0.0d], max: [0.65625d, 0.8125d, 0.3125d]}]
execute if block ~ ~ ~ #iris:shape_groups/copper_wall_torch[facing=west] run data modify storage iris:data shape set value [{min: [0.6875d, 0.1875d, 0.34375d], max: [1.0d, 0.8125d, 0.65625d]}]
execute if block ~ ~ ~ #iris:shape_groups/copper_wall_torch[facing=east] run data modify storage iris:data shape set value [{min: [0.0d, 0.1875d, 0.34375d], max: [0.3125d, 0.8125d, 0.65625d]}]
