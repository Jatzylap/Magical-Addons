# block:custom/aether_dirt/place
# called by: block:custom/aether_dirt/place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/aether_dirt=true}] run playsound block.gravel.place block @a ~ ~ ~ 1 .8

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b