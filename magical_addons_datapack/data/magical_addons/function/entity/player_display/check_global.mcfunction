# entity:player_display/check_global
# called by: main:one_second

## Kill and teleport dreaming player back if bed destroyed
execute unless block ~ ~ ~ #beds on passengers if entity @s[type=marker,tag=maddons.data,nbt={data:{magical_addons:{animation:"sleep"}}}] at @s run function magical_addons:entity/player_display/moves/sleep/end_dream with entity @s data.magical_addons

## Kill if player is not dreaming
execute if block ~ ~ ~ #beds on passengers if entity @s[type=marker,tag=maddons.data,nbt={data:{magical_addons:{animation:"sleep"}}}] at @s run function magical_addons:entity/player_display/moves/sleep/check_dream with entity @s data.magical_addons