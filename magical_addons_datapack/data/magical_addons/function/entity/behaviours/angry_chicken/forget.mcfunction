# entity:behaviours/angry_chicken/forget
# called by advancement: player/event/death
# called by: entity:behaviours/angry_chicken/loop

tag @s remove maddons.angry_chicken
data merge entity @s {DeathLootTable:"minecraft:entities/chicken"}
function magical_addons:dev/unregister_entity with entity @s
scoreboard players reset @s maddons.angry_chicken