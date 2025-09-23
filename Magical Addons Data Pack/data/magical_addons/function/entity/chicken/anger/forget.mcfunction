# entity:chicken/anger/forget
# called by: entity:chicken/loop, player:death_by_chicken

tag @s remove maddons.chicken.anger
tag @s remove maddons.entity.tickable
data merge entity @s {DeathLootTable:"minecraft:entities/chicken"}
scoreboard players reset @s maddons.chicken.anger