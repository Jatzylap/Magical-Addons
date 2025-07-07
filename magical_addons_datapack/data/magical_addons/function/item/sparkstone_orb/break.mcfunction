# item:sparkstone_orb/break
# called by: item:sparkstone_orb/loop

execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":50}}} run loot spawn ~ ~ ~ loot magical_addons:sparkstone_orb
execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":50}}} run item replace entity @n[type=item,dy=1,nbt={Age:0s}] contents from entity @s contents magical_addons:item/damage/sparkstone_orb
execute if data entity @s {item:{components:{"minecraft:damage":50}}} run function magical_addons:item/sparkstone_orb/explode
playsound magical_addons:item.orb.use player @a[distance=...9] ~ ~ ~ 1
playsound magical_addons:item.orb.use player @a[distance=1..2.99] ~ ~ ~ .9
playsound magical_addons:item.orb.use player @a[distance=3..4.99] ~ ~ ~ .8
playsound magical_addons:item.orb.use player @a[distance=5..6.99] ~ ~ ~ .7
playsound magical_addons:item.orb.use player @a[distance=7..8.99] ~ ~ ~ .6
playsound magical_addons:item.orb.use player @a[distance=9..10.99] ~ ~ ~ .5
playsound magical_addons:item.orb.use player @a[distance=11..12.99] ~ ~ ~ .4
playsound magical_addons:item.orb.use player @a[distance=13..14.99] ~ ~ ~ .3
playsound magical_addons:item.orb.use player @a[distance=15..16.99] ~ ~ ~ .2
playsound magical_addons:item.orb.use player @a[distance=17..18.99] ~ ~ ~ .1
execute unless score @s maddons.temp matches 1 store success score @s maddons.temp run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..1] 0.1 minecraft:arrow by @s
execute unless score @s maddons.temp matches 1 store success score @s maddons.temp positioned ^ ^ ^2.5 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..1] 0.1 minecraft:arrow by @s
execute unless score @s maddons.temp matches 1 store success score @s maddons.temp positioned ^ ^ ^2 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..1] 0.1 minecraft:arrow by @s
execute unless score @s maddons.temp matches 1 store success score @s maddons.temp positioned ^ ^ ^1.5 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..1] 0.1 minecraft:arrow by @s
execute unless score @s maddons.temp matches 1 store success score @s maddons.temp positioned ^ ^ ^1 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..1] 0.1 minecraft:arrow by @s
particle firework ~ ~.1 ~ 0 0 0 .2 4
execute if predicate magical_addons:shared/25_percent run particle firework ~ ~.1 ~ 0 0 0 .35 2
execute if predicate magical_addons:shared/5_percent run particle firework ~ ~.1 ~ 0 0 -1 .5 2
function magical_addons:entity/kill