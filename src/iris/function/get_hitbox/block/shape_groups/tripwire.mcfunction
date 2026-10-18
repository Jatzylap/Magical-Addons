execute if block ~ ~ ~ minecraft:tripwire[attached=true] run data modify storage iris:data shape set value [{min: [0.0d, 0.0625d, 0.0d], max: [1.0d, 0.15625d, 1.0d]}]
execute if block ~ ~ ~ minecraft:tripwire[attached=false] run data modify storage iris:data shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 0.5d, 1.0d]}]
