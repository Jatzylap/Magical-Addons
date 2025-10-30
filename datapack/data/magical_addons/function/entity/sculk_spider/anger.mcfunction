# entity:sculk_spider/anger
# called by: entity:sculk_spider/set_nbt, main:two_seconds

damage @s .0 player_attack by @n[type=!#magical_addons:invulnerable,tag=!maddons.invul]
data modify entity @s HurtTime set value 0s