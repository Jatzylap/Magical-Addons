# block:mine_speed
# called by: block:mine

## Mainhand
$attribute @s minecraft:block_break_speed modifier add maddons.player $(break_speed) add_value

## Mining tools
$execute if items entity @s weapon.mainhand #magical_addons:mining_tools run item modify entity @s weapon.mainhand magical_addons:item/mine/$(id)