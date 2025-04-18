# block:custom/echo_grass_block/place
# called by: block:custom/echo_grass_block/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/echo_grass_block=true}] run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b