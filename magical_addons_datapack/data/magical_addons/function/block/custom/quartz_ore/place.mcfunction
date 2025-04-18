# block:custom/quartz_ore/place
# called by: block:custom/quartz_ore/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/quartz_ore=true}] run playsound block.stone.place block @a ~ ~ ~ 1 .6

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b