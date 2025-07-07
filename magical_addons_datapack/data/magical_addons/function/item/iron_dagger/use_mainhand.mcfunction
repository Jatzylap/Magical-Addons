# item:iron_dagger/use_mainhand
# called by advancement: item:use/iron_dagger

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.iron_dagger]}
execute if entity @s[gamemode=creative] run tag @n[type=snowball,tag=maddons.iron_dagger,tag=!maddons.summoned] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.iron_dagger,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/iron_dagger=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.iron_dagger,tag=!maddons.summoned] Item set from entity @s SelectedItem
execute as @n[type=snowball,tag=maddons.iron_dagger,tag=!maddons.summoned] at @s run function magical_addons:item/iron_dagger/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.mainhand with air