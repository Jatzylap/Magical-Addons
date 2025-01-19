# entity:flying_cow/loop
# called by: <dev>

## Moves
execute store success score @s maddons.move run data modify entity @s item.components."minecraft:custom_data".pos set from entity @s Pos
execute if score @s maddons.move matches 0 run function magical_addons:entity/flying_cow/moves/idle
execute if score @s maddons.move matches 1 run function magical_addons:entity/flying_cow/moves/walk
execute as @s[tag=!maddons.gliding,tag=!maddons.death] run function magical_addons:entity/flying_cow/facing

## Death
execute on vehicle unless entity @s[nbt={DeathTime:0s}] on passengers at @s[tag=maddons.entity,tag=!maddons.death] run function magical_addons:entity/flying_cow/death
#execute if score @s[tag=maddons.death] maddons.death matches 0.. run function magical_addons:entity/flying_cow/death_loop

## Hurt
execute on vehicle if entity @s[nbt=!{HurtTime:0s}] on passengers unless score @s[tag=maddons.entity] maddons.damage matches 0.. run function magical_addons:entity/flying_cow/hurt
execute if score @s[tag=!maddons.death] maddons.damage matches 0.. run function magical_addons:entity/flying_cow/hurt_loop