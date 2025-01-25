# entity:sculk_spider/one_second
# called by: main:one_second, entity:sculk_spider/summon

execute if entity @s[tag=!maddons.idle] run return run function magical_addons:entity/sculk_spider/check

execute if entity @s[tag=maddons.idle] run function magical_addons:entity/sculk_spider/check_idle