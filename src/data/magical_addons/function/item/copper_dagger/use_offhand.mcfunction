# item:copper_dagger/use_offhand
# called by advancement: item:use/copper_dagger

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.copper_dagger]} 
execute if entity @s[gamemode=creative] as @n[tag=maddons.copper_dagger,type=snowball,tag=!maddons.summoned] at @s on passengers run tag @s[type=item_display] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.copper_dagger,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/copper_dagger=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.copper_dagger,tag=!maddons.summoned] Item set from entity @s Inventory[{Slot:-106b}]
execute as @n[type=snowball,tag=maddons.copper_dagger,tag=!maddons.summoned] at @s run function magical_addons:item/copper_dagger/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.offhand with air