# item:wooden_dagger/use_offhand
# called by advancement: item:use/wooden_dagger

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.wooden_dagger]}
execute if entity @s[gamemode=creative] as @n[tag=maddons.wooden_dagger,type=snowball,tag=!maddons.summoned] at @s on passengers run tag @s[type=item_display] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/wooden_dagger=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] Item set from entity @s equipment.offhand
execute as @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] at @s run function magical_addons:item/wooden_dagger/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.offhand with air