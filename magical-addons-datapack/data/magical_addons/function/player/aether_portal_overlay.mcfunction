# player:aether_portal_overlay
# called by: player_tick

execute if score @s maddons.portal matches 0 run title @s times 0 6 0
execute if score @s maddons.portal matches 0 run effect give @s nausea 6 0 true
execute if score @s maddons.portal matches 0 run title @s title ["",{"text":"\uE073","shadow_color":0}]
execute if score @s maddons.portal matches 1 run title @s title ["",{"text":"\uE074","shadow_color":0}]
execute if score @s maddons.portal matches 2 run title @s title ["",{"text":"\uE075","shadow_color":0}]
execute if score @s maddons.portal matches 3 run title @s title ["",{"text":"\uE076","shadow_color":0}]
execute if score @s maddons.portal matches 4 run title @s title ["",{"text":"\uE077","shadow_color":0}]
execute if score @s maddons.portal matches 5 run title @s title ["",{"text":"\uE078","shadow_color":0}]
execute if score @s maddons.portal matches 6 run title @s title ["",{"text":"\uE079","shadow_color":0}]
execute if score @s maddons.portal matches 7 run title @s title ["",{"text":"\uE080","shadow_color":0}]
execute if score @s maddons.portal matches 8 run title @s title ["",{"text":"\uE081","shadow_color":0}]
execute if score @s maddons.portal matches 9 run title @s title ["",{"text":"\uE082","shadow_color":0}]
execute if score @s maddons.portal matches 10 run title @s title ["",{"text":"\uE083","shadow_color":0}]
execute if score @s maddons.portal matches 11 run title @s title ["",{"text":"\uE084","shadow_color":0}]
execute if score @s maddons.portal matches 12 run title @s title ["",{"text":"\uE085","shadow_color":0}]
execute if score @s maddons.portal matches 13 run title @s title ["",{"text":"\uE086","shadow_color":0}]
execute if score @s maddons.portal matches 14 run title @s title ["",{"text":"\uE087","shadow_color":0}]
execute if score @s maddons.portal matches 15 run title @s title ["",{"text":"\uE088","shadow_color":0}]
execute if score @s maddons.portal matches 16 run title @s title ["",{"text":"\uE089","shadow_color":0}]
execute if score @s maddons.portal matches 17 run title @s title ["",{"text":"\uE090","shadow_color":0}]
execute if score @s maddons.portal matches 18 run title @s title ["",{"text":"\uE091","shadow_color":0}]
execute if score @s maddons.portal matches 19 run title @s title ["",{"text":"\uE092","shadow_color":0}]
execute if score @s maddons.portal matches 20 run title @s title ["",{"text":"\uE093","shadow_color":0}]
execute if score @s maddons.portal matches 21 run title @s title ["",{"text":"\uE094","shadow_color":0}]
execute if score @s maddons.portal matches 22 run title @s title ["",{"text":"\uE095","shadow_color":0}]
execute if score @s maddons.portal matches 23 run title @s title ["",{"text":"\uE096","shadow_color":0}]
execute if score @s maddons.portal matches 24 run title @s title ["",{"text":"\uE097","shadow_color":0}]
execute if score @s maddons.portal matches 25 run title @s title ["",{"text":"\uE098","shadow_color":0}]
execute if score @s maddons.portal matches 26 run title @s title ["",{"text":"\uE099","shadow_color":0}]
execute if score @s maddons.portal matches 27 run title @s title ["",{"text":"\uE100","shadow_color":0}]
execute if score @s maddons.portal matches 28 run title @s title ["",{"text":"\uE101","shadow_color":0}]
execute if score @s maddons.portal matches 29 run title @s title ["",{"text":"\uE102","shadow_color":0}]
execute if score @s maddons.portal matches 30 run title @s title ["",{"text":"\uE103","shadow_color":0}]
execute if score @s maddons.portal matches 31 run title @s title ["",{"text":"\uE104","shadow_color":0}]
execute if score @s maddons.portal matches 32 run return run scoreboard players reset @s maddons.portal

scoreboard players add @s maddons.portal 1