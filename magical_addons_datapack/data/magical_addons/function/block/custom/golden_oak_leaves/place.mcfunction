# block:custom/golden_oak_leaves/place
# called by: block:place_end

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/golden_oak_leaves=true}] run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b