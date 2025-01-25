# block:custom/quartz_ore/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/quartz_ore=true}] run playsound block.stone.place block @a ~ ~ ~ 1 .6

## Block
summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.quartz_ore]}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b