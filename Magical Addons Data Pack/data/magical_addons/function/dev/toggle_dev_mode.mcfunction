playsound ui.button.click master @s ~ ~ ~ .3
tag @s[tag=!maddons.dev] add 0n
tag @s[tag=maddons.dev] add 0ff

execute at @s[tag=0n] run tag @s add maddons.dev
execute at @s[tag=0n] run title @s actionbar ["",{"text":"Developer mode: "},{"text":"ON","color":"green","bold":true}]
execute at @s[tag=0n] run effect give @s glowing infinite 0 true
execute at @s[tag=0ff] run tag @s remove maddons.dev
execute at @s[tag=0ff] run title @s actionbar ["",{"text":"Developer mode: "},{"text":"OFF","color":"red","bold":true}]
execute at @s[tag=0ff] run effect clear @s glowing
execute at @s[tag=0ff] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]

tag @s remove 0n
tag @s remove 0ff
scoreboard players set @s maddons.developer_mode 0
scoreboard players enable @s maddons.developer_mode