# block:mine_speed
# called by: block:mine

attribute @s minecraft:block_break_speed modifier remove maddons.player

$attribute @s minecraft:block_break_speed modifier add maddons.player $(break_speed) add_value

# wizarding table
# 2 add_value