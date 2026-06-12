execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=north] run data modify storage iris:data shape set value [{min: [0.1875d, 0.25d, 0.5d], max: [0.8125d, 0.75d, 1.0d]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=south] run data modify storage iris:data shape set value [{min: [0.1875d, 0.25d, 0.0d], max: [0.8125d, 0.75d, 0.5d]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=west] run data modify storage iris:data shape set value [{min: [0.5d, 0.25d, 0.1875d], max: [1.0d, 0.75d, 0.8125d]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=east] run data modify storage iris:data shape set value [{min: [0.0d, 0.25d, 0.1875d], max: [0.5d, 0.75d, 0.8125d]}]
