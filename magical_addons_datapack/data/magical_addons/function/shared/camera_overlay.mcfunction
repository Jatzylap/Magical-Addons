# shared:camera_overlay
# called by: player:event/overlay_ancient_portal

$item replace entity @s armor.head with stick[minecraft:equippable={slot:"head",camera_overlay:"magical_addons:gui/sprites/hud/$(id)_overlay_$(num)"},item_model="air",minecraft:enchantments={levels:{binding_curse:1}},minecraft:hide_tooltip={}]

#execute if items entity @s armor.head * run item modify entity @s