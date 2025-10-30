# magic:sonic_boom/start
# called by: player:deflect_sonic_boom

tag @s add maddons.spell.caster

playsound entity.warden.sonic_boom player @a ~ ~ ~ 2

scoreboard players set #maddons.magic.sonic_boom maddons.move 0

execute anchored eyes positioned ^ ^ ^ run function magical_addons:magic/sonic_boom/ray

tag @s remove maddons.spell.caster