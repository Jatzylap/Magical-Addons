# item:sparkstone_orb/use_offhand
# called by advancement: item:use/sparkstone_orb

## Summon
execute anchored eyes run summon snowball ^ ^ ^ {Tags:[maddons.sparkstone_orb]} 
execute if entity @s[gamemode=creative] as @n[tag=maddons.sparkstone_orb,type=snowball,tag=!maddons.summoned] at @s on passengers run tag @s[type=item_display] add maddons.no_break

## Rotate
execute as @n[type=snowball,tag=maddons.sparkstone_orb,tag=!maddons.summoned] at @s rotated as @p[advancements={magical_addons:---/item/use/sparkstone_orb=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
data modify entity @n[type=snowball,tag=maddons.sparkstone_orb,tag=!maddons.summoned] Item set from entity @s Inventory[{Slot:-106b}]
execute as @n[type=snowball,tag=maddons.sparkstone_orb,tag=!maddons.summoned] at @s run function magical_addons:item/sparkstone_orb/shoot

## Clear
item replace entity @s[gamemode=!creative] weapon.offhand with air