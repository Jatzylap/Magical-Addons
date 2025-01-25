# entity:sculk_spider/moves/crawl
# called by: entity:sculk_spider/check

execute as @s[tag=!maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_crawl_normal"
execute as @s[tag=maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_crawl_hurt"
tag @s add maddons.crawl
tag @s remove maddons.idle