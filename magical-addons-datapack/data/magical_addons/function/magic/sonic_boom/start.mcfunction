# magic:sonic_boom/start
# called by: player:deflect_sonic_boom

tag @s add maddons.spell.caster

execute unless score @s maddons.sound_cooldown matches 1.. run playsound entity.warden.sonic_boom player @a ~ ~ ~ 2

scoreboard players set #maddons.magic.sonic_boom maddons.move 0

execute unless score @s maddons.sound_cooldown matches 1.. anchored eyes positioned ^ ^ ^ run function magical_addons:magic/sonic_boom/ray

tag @s remove maddons.spell.caster