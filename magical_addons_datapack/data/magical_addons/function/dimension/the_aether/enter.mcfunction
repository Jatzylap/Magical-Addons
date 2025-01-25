# dimension:the_aether/enter
# called by advancement : dimension:enter_the_aether

execute in the_aether run forceload remove all
stopsound @s music
tag @s add maddons.dreaming

function magical_addons:dev/store_inventory {slot:"Aether"}
clear
spawnpoint
execute store result score @s maddons.dream.x run data get entity @s SpawnX
execute store result score @s maddons.dream.y run data get entity @s SpawnY
execute store result score @s maddons.dream.z run data get entity @s SpawnZ
execute in the_aether run spreadplayers ~ ~ 0 50 false @s
execute in the_aether run forceload add ~ ~

advancement revoke @s only magical_addons:---/dimension/enter_the_aether