execute if block ~ ~ ~ #iris:shape_groups/copper_chain[axis=x] run data modify storage iris:data shape set value [{min: [0.0d, 0.40625d, 0.40625d], max: [1.0d, 0.59375d, 0.59375d]}]
execute if block ~ ~ ~ #iris:shape_groups/copper_chain[axis=y] run data modify storage iris:data shape set value [{min: [0.40625d, 0.0d, 0.40625d], max: [0.59375d, 1.0d, 0.59375d]}]
execute if block ~ ~ ~ #iris:shape_groups/copper_chain[axis=z] run data modify storage iris:data shape set value [{min: [0.40625d, 0.40625d, 0.0d], max: [0.59375d, 0.59375d, 1.0d]}]
