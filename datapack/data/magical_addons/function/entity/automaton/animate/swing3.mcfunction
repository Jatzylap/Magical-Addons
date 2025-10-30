# entity:automaton/animate/swing3
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 0 run return run function magical_addons:entity/automaton/moves/reset

execute if score @s maddons.cooldown matches 160 run summon item_display ~ ~ ~ {Rotation:[90.85f,0f],CustomName:'{"translate":"entity.magical_addons.automaton"}',teleport_duration:2,Tags:[maddons.invul,maddons.automaton.swing3_spin]}

execute if score @s maddons.cooldown matches 112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 90.85 0
execute if score @s maddons.cooldown matches 106..111 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~19.138 0

execute if score @s maddons.cooldown matches 105 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 186.54 0
execute if score @s maddons.cooldown matches 101..104 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~29.2566 0

execute if score @s maddons.cooldown matches 100 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 274.31 0
execute if score @s maddons.cooldown matches 97..99 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~38.455 0

execute if score @s maddons.cooldown matches 96 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 351.22 0
execute if score @s maddons.cooldown matches 92..95 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~32.4866 0

execute if score @s maddons.cooldown matches 91 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 448.68 0
execute if score @s maddons.cooldown matches 87..90 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~30.8666 0

execute if score @s maddons.cooldown matches 86 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 541.28 0
execute if score @s maddons.cooldown matches 82..85 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~27.9866 0

execute if score @s maddons.cooldown matches 81 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 625.24 0
execute if score @s maddons.cooldown matches 75..80 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~20.216 0

execute if score @s maddons.cooldown matches 74 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 726.32 0
execute if score @s maddons.cooldown matches 68..73 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~16.578 0

execute if score @s maddons.cooldown matches 67 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 809.21 0
execute if score @s maddons.cooldown matches 58..66 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~11.4875 0

execute if score @s maddons.cooldown matches 57 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 901.11 0
execute if score @s maddons.cooldown matches 44..56 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ ~7.3516 0

execute if score @s maddons.cooldown matches 43 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s run tp @s ~ ~ ~ 989.33 0

## Spin effects
#execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^7 ^-6 ^1 run particle sculk_charge_pop ~ ~ ~ .2 .2 .2 .1 30 force
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^7 ^-6 ^1 run fill ^ ^ ^ ^ ^ ^-7 air destroy

## Spin knockback
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^7 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^6 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^5 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^4 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^3 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^2 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit
execute if score @s maddons.cooldown matches 41..112 as @n[type=item_display,tag=maddons.automaton.swing3_spin] at @s positioned ^1 ^-6 ^1 run function magical_addons:entity/automaton/effects/swing3_hit

execute if score @s maddons.cooldown matches 41 run kill @n[type=item_display,tag=maddons.automaton.swing3_spin]