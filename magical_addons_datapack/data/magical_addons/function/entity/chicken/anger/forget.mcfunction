# entity:chicken/anger/forget
# called by: entity:chicken/loop, player:event/death

tag @s remove maddons.chicken.anger
data merge entity @s {DeathLootTable:"minecraft:entities/chicken"}
function magical_addons:dev/unregister_entity with entity @s
scoreboard players reset @s maddons.chicken.anger