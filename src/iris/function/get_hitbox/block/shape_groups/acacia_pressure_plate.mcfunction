execute if block ~ ~ ~ #iris:shape_groups/acacia_pressure_plate[powered=true] run data modify storage iris:data shape set value [{min: [0.0625d, 0.0d, 0.0625d], max: [0.9375d, 0.03125d, 0.9375d]}]
execute if block ~ ~ ~ #iris:shape_groups/acacia_pressure_plate[powered=false] run data modify storage iris:data shape set value [{min: [0.0625d, 0.0d, 0.0625d], max: [0.9375d, 0.0625d, 0.9375d]}]
