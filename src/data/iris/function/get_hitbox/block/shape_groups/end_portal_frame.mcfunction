execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 0.8125d, 1.0d]}, {min: [0.25d, 0.8125d, 0.25d], max: [0.75d, 1.0d, 0.75d]}]
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 0.8125d, 1.0d]}]
