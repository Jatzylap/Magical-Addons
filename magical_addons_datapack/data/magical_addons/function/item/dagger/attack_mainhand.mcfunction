# item:dagger/attack_mainhand
# called by: item:dagger/attack

## Break
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run playsound entity.item.break player @a ~ ~ ~ 0.5
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run particle item{item:{id:"warped_fungus_on_a_stick",components:{item_model:"magical_addons:$(id)"}}} ^-.4 ^ ^.1 0 0 0 .2 5 normal @a
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run item replace entity @s weapon.mainhand with air

## Damage
$item modify entity @s weapon.mainhand magical_addons:item/damage/$(id)