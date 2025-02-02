# block:custom/moonstone/place
# called by: block:place_end

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/moonstone=true}] run playsound block.bone_block.place block @a ~ ~ ~ 1 .6

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b