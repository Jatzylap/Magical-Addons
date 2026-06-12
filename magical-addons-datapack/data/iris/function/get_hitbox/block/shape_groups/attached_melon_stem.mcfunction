execute if block ~ ~ ~ #iris:shape_groups/attached_melon_stem[facing=north] run data modify storage iris:data shape set value [{min: [0.375d, 0.0d, 0.0d], max: [0.625d, 0.625d, 0.625d]}]
execute if block ~ ~ ~ #iris:shape_groups/attached_melon_stem[facing=south] run data modify storage iris:data shape set value [{min: [0.375d, 0.0d, 0.375d], max: [0.625d, 0.625d, 1.0d]}]
execute if block ~ ~ ~ #iris:shape_groups/attached_melon_stem[facing=west] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.375d], max: [0.625d, 0.625d, 0.625d]}]
execute if block ~ ~ ~ #iris:shape_groups/attached_melon_stem[facing=east] run data modify storage iris:data shape set value [{min: [0.375d, 0.0d, 0.375d], max: [1.0d, 0.625d, 0.625d]}]
