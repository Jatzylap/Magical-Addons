# block:custom/aether_grass_block/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/aether_grass_block=true}] run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.aether_grass_block]}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b