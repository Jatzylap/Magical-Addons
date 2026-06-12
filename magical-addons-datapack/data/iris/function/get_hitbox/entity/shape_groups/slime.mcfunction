




scoreboard players set $entity_width iris 520000
scoreboard players set $entity_height iris 520000
execute store result score $slime_size iris run data get entity @s Size
scoreboard players add $slime_size iris 1
scoreboard players operation $entity_width iris *= $slime_size iris
scoreboard players operation $entity_height iris *= $slime_size iris
