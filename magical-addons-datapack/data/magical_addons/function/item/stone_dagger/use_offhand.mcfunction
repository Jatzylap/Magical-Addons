# item:stone_dagger/use_offhand
# called by advancement: item:use/stone_dagger

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.stone_dagger]} 
execute if entity @s[gamemode=creative] as @n[tag=maddons.stone_dagger,type=snowball,tag=!maddons.summoned] at @s on passengers run tag @s[type=item_display] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.stone_dagger,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/stone_dagger=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
execute at @s as @a run playsound entity.ender_pearl.throw neutral @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.stone_dagger,tag=!maddons.summoned] Item set from entity @s equipment.offhand
execute as @n[type=snowball,tag=maddons.stone_dagger,tag=!maddons.summoned] at @s run function magical_addons:item/stone_dagger/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.offhand with air