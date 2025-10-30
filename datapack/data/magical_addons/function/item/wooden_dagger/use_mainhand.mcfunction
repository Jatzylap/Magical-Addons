# item:wooden_dagger/use_mainhand
# called by advancement: item:use/wooden_dagger

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.wooden_dagger]}
execute if entity @s[gamemode=creative] run tag @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/wooden_dagger=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] Item set from entity @s SelectedItem
execute as @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] at @s run function magical_addons:item/wooden_dagger/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.mainhand with air