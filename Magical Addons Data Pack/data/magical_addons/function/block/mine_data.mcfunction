# block:mine_data
# called by: block:mine

## Set block ID for block loot
$scoreboard players set @s maddons.block.loot_id $(loot_id)

## Break speed (mainhand)
$attribute @s minecraft:block_break_speed modifier add magical_addons:mine_speed $(break_speed) add_value

## Break speed (mining tools)
$execute if items entity @s weapon.mainhand #magical_addons:mining_tools run item modify entity @s weapon.mainhand magical_addons:item/mine/$(id)