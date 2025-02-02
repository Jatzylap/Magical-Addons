# entity:sculk_spider/loop
# called by: <dev>

## Death
execute on vehicle unless entity @s[nbt={DeathTime:0s}] on passengers at @s[tag=maddons.entity,tag=!maddons.death] run function magical_addons:entity/sculk_spider/death
execute if score @s[tag=maddons.death] maddons.death matches 0.. run function magical_addons:entity/sculk_spider/death_loop

## Hurt
execute on vehicle if entity @s[nbt=!{HurtTime:0s}] on passengers unless score @s[tag=maddons.entity] maddons.damage matches 0.. run function magical_addons:entity/sculk_spider/hurt
execute if score @s[tag=!maddons.death] maddons.damage matches 0.. run function magical_addons:entity/sculk_spider/hurt_loop

## Moves
execute store success score @s maddons.move run data modify entity @s item.components."minecraft:custom_data".pos set from entity @s Pos
execute if score @s[tag=!maddons.death] maddons.move matches 0 run function magical_addons:entity/sculk_spider/moves/idle
execute if score @s[tag=!maddons.death] maddons.move matches 1 run function magical_addons:entity/sculk_spider/moves/crawl
execute as @s[tag=!maddons.death] run function magical_addons:entity/sculk_spider/facing