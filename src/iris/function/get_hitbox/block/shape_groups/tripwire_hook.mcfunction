execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run data modify storage iris:data shape set value [{min: [0.3125d, 0.0d, 0.625d], max: [0.6875d, 0.625d, 1.0d]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run data modify storage iris:data shape set value [{min: [0.3125d, 0.0d, 0.0d], max: [0.6875d, 0.625d, 0.375d]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run data modify storage iris:data shape set value [{min: [0.625d, 0.0d, 0.3125d], max: [1.0d, 0.625d, 0.6875d]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.3125d], max: [0.375d, 0.625d, 0.6875d]}]
