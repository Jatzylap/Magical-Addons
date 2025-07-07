# item:baton/use_mainhand
# called by: item:baton/use

## Use (Creative Mode)
execute if entity @s[gamemode=creative] anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.baton,maddons.magic]}
execute if entity @s[gamemode=creative] run playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1
execute if entity @s[gamemode=creative] as @n[tag=maddons.baton,type=marker,tag=!maddons.summoned] at @s run function magical_addons:item/baton/register

## Use (!Creative Mode)
$execute if entity @s[gamemode=!creative] unless score @s maddons.mana matches $(min_mana).. run playsound magical_addons:item.generic.spell.fizzle player @s ~ ~ ~
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.baton,maddons.magic]}
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. run playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. as @n[tag=maddons.baton,type=marker,tag=!maddons.summoned] at @s run function magical_addons:item/baton/register

## Break
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.mainhand *[damage=$(max_damage)] run playsound entity.item.break player @a ~ ~ ~ 0.5
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.mainhand *[damage=$(max_damage)] run particle item{item:{id:"recovery_compass",components:{item_model:"magical_addons:baton"}}} ^-.4 ^ ^.1 0 0 0 .2 5 normal @a
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.mainhand *[damage=$(max_damage)] run item replace entity @s weapon.mainhand with air

## Damage
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. run item modify entity @s weapon.mainhand magical_addons:item/damage/baton

## Remove Mana
$execute if entity @s[gamemode=!creative] run scoreboard players remove @s[scores={maddons.mana=$(min_mana)..}] maddons.mana $(min_mana)