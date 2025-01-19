# block:custom/sparkstone/place
# called by: block:place_end

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/sparkstone=true}] run playsound block.amethyst_block.place block @a ~ ~ ~ 1 1.1

## Block
summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.sparkstone]}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b