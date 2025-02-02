# entity:sculk_spider/moves/crawl
# called by: entity:sculk_spider/loop

tag @s add maddons.crawl
tag @s remove maddons.idle
scoreboard players add @s maddons.animation 1
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s maddons.animation
scoreboard players set @s[scores={maddons.animation=19..}] maddons.animation -1