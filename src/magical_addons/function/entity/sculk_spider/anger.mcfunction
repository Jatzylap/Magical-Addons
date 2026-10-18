# magical_addons:entity/sculk_spider/anger
# called by: magical_addons:entity/sculk_spider/set_nbt, main:ten_seconds

attribute @s knockback_resistance base set 99.0
damage @s 0.0 player_attack by @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul]
attribute @s knockback_resistance base set 0.0
data modify entity @s HurtTime set value 0s