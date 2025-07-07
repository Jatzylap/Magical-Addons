# entity:sculk_spider/hurt
# called by: entity:sculk_spider/loop

execute on vehicle store result score @s maddons.damage if data entity @s {HurtTime:0s} run return 0

execute on vehicle if score @s maddons.damage matches 0 store success score @s maddons.damage if entity @s[tag=!maddons.death,tag=!maddons.baby] on passengers as @s[tag=maddons.entity] on vehicle run playsound entity.spider.hurt hostile @a ~ ~ ~ 1
execute on vehicle if score @s maddons.damage matches 0 store success score @s maddons.damage if entity @s[tag=!maddons.death,tag=maddons.baby] on passengers as @s[tag=maddons.entity] on vehicle run playsound entity.spider.hurt hostile @a ~ ~ ~ 1 1.3

return 1