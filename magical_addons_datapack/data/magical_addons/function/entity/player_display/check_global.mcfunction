# entity:player_display/check_global
# called by: main:one_second

## Kill and teleport dreaming player back if bed destroyed
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{magical_addons:{animation:"sleep"}}}}}] at @s unless block ~ ~ ~ #beds run function magical_addons:entity/player_display/moves/sleep/end_dream with entity @s item.components."minecraft:custom_data".magical_addons

## Kill if player is not dreaming
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{magical_addons:{animation:"sleep"}}}}}] at @s if block ~ ~ ~ #beds run function magical_addons:entity/player_display/moves/sleep/check_dream with entity @s item.components."minecraft:custom_data".magical_addons