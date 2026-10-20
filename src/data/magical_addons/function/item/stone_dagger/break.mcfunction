# item:stone_dagger/break
# called by: item:stone_dagger/loop

execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":59}}} run loot spawn ~ ~ ~ loot magical_addons:stone_dagger
execute if entity @s[tag=!maddons.no_break] unless data entity @s {item:{components:{"minecraft:damage":59}}} run item replace entity @n[type=item,dy=1,nbt={Age:0s}] contents from entity @s contents magical_addons:item/damage/stone_dagger
execute if data entity @s {item:{components:{"minecraft:damage":132}}} at @s as @a run playsound entity.item.break player @a ~ ~ ~ 1
execute at @s as @a run playsound magical_addons:item.dagger.hit neutral @a ~ ~ ~
execute positioned ^ ^ ^1 run damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..3] 2.5 minecraft:arrow by @s
particle minecraft:item{item:{id:"recovery_compass",components:{item_model:"magical_addons:stone_dagger"}}} ~ ~.1 ~ 0 0 0 .1 9
execute on vehicle run kill
kill