# item:dagger/sparkstone_orb/explosion_effects/3
# called by: main:tick_cycle

## End
execute if score @s maddons.move matches 180.. run return run kill

scoreboard players add @s maddons.move 1

## Shift colour
execute if score @s[tag=!maddons.four] maddons.move matches 150.. run return run function magical_addons:item/dagger/sparkstone_orb/explosion_effects/7
execute if score @s[tag=!maddons.three] maddons.move matches 120.. run return run function magical_addons:item/dagger/sparkstone_orb/explosion_effects/6
execute if score @s[tag=!maddons.two] maddons.move matches 90.. run return run function magical_addons:item/dagger/sparkstone_orb/explosion_effects/5
execute if score @s[tag=!maddons.one] maddons.move matches 60.. run function magical_addons:item/dagger/sparkstone_orb/explosion_effects/4

## Heatwave
place feature magical_addons:patch_fire_blast ~ ~ ~
place feature magical_addons:patch_tuff_blast ~ ~ ~
place feature magical_addons:patch_mangrove_blast ~ ~ ~