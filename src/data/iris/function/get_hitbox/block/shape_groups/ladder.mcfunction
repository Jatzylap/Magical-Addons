execute if block ~ ~ ~ minecraft:ladder[facing=north] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.8125d], max: [1.0d, 1.0d, 1.0d]}]
execute if block ~ ~ ~ minecraft:ladder[facing=south] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 1.0d, 0.1875d]}]
execute if block ~ ~ ~ minecraft:ladder[facing=west] run data modify storage iris:data shape set value [{min: [0.8125d, 0.0d, 0.0d], max: [1.0d, 1.0d, 1.0d]}]
execute if block ~ ~ ~ minecraft:ladder[facing=east] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [0.1875d, 1.0d, 1.0d]}]
