# entity:automaton/effects/swing2_spell
# called by: entity:tick

particle sculk_charge_pop ~ ~.5 ~ .7 0 .7 .01 15 force @a
execute if entity @s[tag=spell1] unless block ^ ^ ^1 #magical_addons:non_collidable run tp @s ^ ^ ^.5 ~ 0
execute if entity @s[tag=spell2] unless block ^ ^ ^1 #magical_addons:non_collidable facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.25
execute unless data entity @s Passengers run kill
execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.automaton,tag=!maddons.invul,distance=..2] at @s run damage @s 2 mob_attack by @n[tag=maddons.automaton.swing2_spell]