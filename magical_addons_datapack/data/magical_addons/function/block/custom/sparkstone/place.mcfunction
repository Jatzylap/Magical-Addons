# block:custom/sparkstone/place
# called by: block:custom/sparkstone/place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/sparkstone=true}] run playsound block.amethyst_block.place block @a ~ ~ ~ 1 1.1

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b