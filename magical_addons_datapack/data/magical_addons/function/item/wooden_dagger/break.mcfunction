# item:wooden_dagger/break
# called by: item:wooden_dagger/loop

execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":59}}} run loot spawn ~ ~ ~ loot magical_addons:wooden_dagger
execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":59}}} run item replace entity @n[type=item,dy=1,nbt={Age:0s}] contents from entity @s contents magical_addons:item/damage/wooden_dagger
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=...9] ~ ~ ~ 1
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=1..2.99] ~ ~ ~ .9
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=3..4.99] ~ ~ ~ .8
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=5..6.99] ~ ~ ~ .7
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=7..8.99] ~ ~ ~ .6
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=9..10.99] ~ ~ ~ .5
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=11..12.99] ~ ~ ~ .4
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=13..14.99] ~ ~ ~ .3
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=15..16.99] ~ ~ ~ .2
execute if data entity @s {item:{components:{"minecraft:damage":59}}} run playsound entity.item.break player @a[distance=17..18.99] ~ ~ ~ .1
playsound magical_addons:item.dagger.hit player @a[distance=...9] ~ ~ ~ 1
playsound magical_addons:item.dagger.hit player @a[distance=1..2.99] ~ ~ ~ .9
playsound magical_addons:item.dagger.hit player @a[distance=3..4.99] ~ ~ ~ .8
playsound magical_addons:item.dagger.hit player @a[distance=5..6.99] ~ ~ ~ .7
playsound magical_addons:item.dagger.hit player @a[distance=7..8.99] ~ ~ ~ .6
playsound magical_addons:item.dagger.hit player @a[distance=9..10.99] ~ ~ ~ .5
playsound magical_addons:item.dagger.hit player @a[distance=11..12.99] ~ ~ ~ .4
playsound magical_addons:item.dagger.hit player @a[distance=13..14.99] ~ ~ ~ .3
playsound magical_addons:item.dagger.hit player @a[distance=15..16.99] ~ ~ ~ .2
playsound magical_addons:item.dagger.hit player @a[distance=17..18.99] ~ ~ ~ .1
execute positioned ^ ^ ^1 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..2] 2.0 minecraft:arrow by @s
particle minecraft:item{item:{id:"recovery_compass",components:{item_model:"magical_addons:wooden_dagger"}}} ~ ~.1 ~ 0 0 0 .1 9
function magical_addons:entity/kill