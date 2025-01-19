# block:custom/moonstone/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place=true}] if block ~ ~ ~ chiseled_bookshelf{components:{"minecraft:custom_data":{maddons.id:"moonstone"}}} run playsound block.bone_block.place block @a ~ ~ ~ 1 .6

## Block
summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.moonstone]}