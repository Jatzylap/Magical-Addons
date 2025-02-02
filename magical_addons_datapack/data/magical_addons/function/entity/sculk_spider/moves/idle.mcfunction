# entity:sculk_spider/idle
# called by: entity:sculk_spider/loop

data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value -1f
tag @s remove maddons.crawl
tag @s add maddons.idle