execute on passengers run kill @s[type=!player]
kill @s[type=!player]

execute align xyz positioned ~.5 ~.5 ~.5 run kill @e[tag=maddons.block,distance=...5]
scoreboard players reset #magical_addons:set_custom_block maddons.temp

$execute store success score #magical_addons:set_custom_block maddons.temp align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/$(id)/generate
execute if score #magical_addons:set_custom_block maddons.temp matches 0 run tellraw @s ["",{"translate":"arguments.magical_addons.id.invalid","color":"red"}]
execute if score #magical_addons:set_custom_block maddons.temp matches 1 run return 1