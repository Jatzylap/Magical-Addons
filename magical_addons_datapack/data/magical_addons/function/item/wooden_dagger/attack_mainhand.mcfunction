# item:wooden_dagger/attack_mainhand
# called by: item:wooden_dagger/attack

## Break
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run playsound entity.item.break player @a ~ ~ ~ 0.5
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run particle item{item:{id:"recovery_compass",components:{item_model:"magical_addons:wooden_dagger"}}} ^-.4 ^ ^.1 0 0 0 .2 5 normal @a
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run item replace entity @s weapon.mainhand with air

## Damage
item modify entity @s weapon.mainhand magical_addons:item/damage/wooden_dagger