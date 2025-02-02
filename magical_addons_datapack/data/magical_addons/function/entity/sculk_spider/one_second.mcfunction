# entity:sculk_spider/one_second
# called by: main:one_second, entity:sculk_spider/summon

execute if block ~ ~ ~ air run data remove entity @s brightness
execute if block ~ ~ ~ air on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ air run function magical_addons:entity/light
execute on passengers as @s[tag=maddons.head] unless block ~ ~ ~ air run function magical_addons:entity/light
execute if entity @s[tag=!maddons.idle] run return run function magical_addons:entity/sculk_spider/check
execute if entity @s[tag=maddons.idle] run function magical_addons:entity/sculk_spider/check_idle