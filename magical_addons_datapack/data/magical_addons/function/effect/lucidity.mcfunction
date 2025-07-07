# effect:lucidity
# called by: main:one_second

scoreboard players add @s maddons.lucidity 1

particle minecraft:entity_effect{color:[.88,.36,.15,.98]} ~ ~.5 ~ 0 0.5 0 1 5 normal @a

## No flash
execute if score @s maddons.lucidity matches ..49 run title @s actionbar ["",{"text":"\uE463\uE464"}]

## Flash
execute if score @s maddons.lucidity matches 50 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 51 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 52 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 53 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 54 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 53 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 54 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 55 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 56 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 57 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 58 run title @s actionbar ["",{"text":"\uE463"}]
execute if score @s maddons.lucidity matches 59 run title @s actionbar ["",{"text":"\uE463\uE464"}]
execute if score @s maddons.lucidity matches 60.. run function magical_addons:effect/clear_lucidity