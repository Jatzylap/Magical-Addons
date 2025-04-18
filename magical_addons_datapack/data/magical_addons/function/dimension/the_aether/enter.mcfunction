# dimension:the_aether/enter
# called by advancement : dimension:enter_the_aether

execute in the_aether run forceload remove all
stopsound @s music
tag @s add maddons.dreaming
function magical_addons:effect/clear_lucidity
effect clear
function magical_addons:dev/store_inventory {slot:"outAether"}
clear
function magical_addons:dev/restore_inventory {slot:"inAether"}
spawnpoint

execute if entity @s[tag=!maddons.skin.slim] if block ~ ~ ~ #beds[facing=south] positioned ~ ~-0.25 ~ rotated 180 0 run function magical_addons:entity/player_display/summon {variant:"default",text_view_range:1}
execute if entity @s[tag=!maddons.skin.slim] if block ~ ~ ~ #beds[facing=north] positioned ~ ~-0.25 ~ rotated 0 0 run function magical_addons:entity/player_display/summon {variant:"default",text_view_range:1}
execute if entity @s[tag=!maddons.skin.slim] if block ~ ~ ~ #beds[facing=east] positioned ~ ~-0.25 ~ rotated 90 0 run function magical_addons:entity/player_display/summon {variant:"default",text_view_range:1}
execute if entity @s[tag=!maddons.skin.slim] if block ~ ~ ~ #beds[facing=west] positioned ~ ~-0.25 ~ rotated -90 0 run function magical_addons:entity/player_display/summon {variant:"default",text_view_range:1}
execute if entity @s[tag=maddons.skin.slim] if block ~ ~ ~ #beds[facing=south] positioned ~ ~-0.25 ~ rotated 180 0 run function magical_addons:entity/player_display/summon {variant:"slim",text_view_range:1}
execute if entity @s[tag=maddons.skin.slim] if block ~ ~ ~ #beds[facing=north] positioned ~ ~-0.25 ~ rotated 0 0 run function magical_addons:entity/player_display/summon {variant:"slim",text_view_range:1}
execute if entity @s[tag=maddons.skin.slim] if block ~ ~ ~ #beds[facing=east] positioned ~ ~-0.25 ~ rotated 90 0 run function magical_addons:entity/player_display/summon {variant:"slim",text_view_range:1}
execute if entity @s[tag=maddons.skin.slim] if block ~ ~ ~ #beds[facing=west] positioned ~ ~-0.25 ~ rotated -90 0 run function magical_addons:entity/player_display/summon {variant:"slim",text_view_range:1}

execute store result score @s maddons.dream.x run data get entity @s SpawnX
execute store result score @s maddons.dream.y run data get entity @s SpawnY
execute store result score @s maddons.dream.z run data get entity @s SpawnZ
execute in the_aether run spreadplayers ~ ~ 0 50 false @s
execute in the_aether run forceload add ~ ~

advancement revoke @s only magical_addons:---/dimension/enter_the_aether