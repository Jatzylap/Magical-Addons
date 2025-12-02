# entity:automaton/animate/shoot
# called by: entity:tick

execute if score @s maddons.cooldown matches 0 on vehicle on passengers run function magical_addons:entity/automaton/moves/reset

## Stop
execute if score @s maddons.cooldown matches ..90 if score @s maddons.animation matches 1.. store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players remove @s maddons.animation 1

## Animation
execute if score @s maddons.cooldown matches 118..199 if score @s maddons.animation matches ..79 store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players add @s maddons.animation 1

## Facing
execute if score @s maddons.cooldown matches 118 as @s[tag=!maddons.bone.head,tag=!maddons.bone.legs] at @s run rotate @s ~180 0
execute if score @s maddons.cooldown matches ..118 as @s[tag=!maddons.bone.head,tag=!maddons.bone.legs] at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~180 0
execute if score @s maddons.cooldown matches ..118 on vehicle on vehicle at @s anchored eyes run rotate @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes
execute if score @s maddons.cooldown matches ..199 as @s[tag=maddons.bone.head] at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~ 0

## Shoot
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 110 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 90 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 70 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 50 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 100 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 80 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 60 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 40 on vehicle on vehicle at @s positioned ~ ~-1.25 ~ run function magical_addons:entity/automaton/effects/shoot_spell

scoreboard players remove @s maddons.cooldown 1