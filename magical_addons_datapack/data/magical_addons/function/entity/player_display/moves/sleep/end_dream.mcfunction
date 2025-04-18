# entity:player_display/sleep/end_dream
# called by: entity:player_display/check_global

$execute as $(player_name) at @s run function magical_addons:dimension/the_aether/return

$execute if data entity $(player_name) {Dimension:"minecraft:overworld"} run tag $(player_name) remove maddons.dreaming

$execute if data entity $(player_name) {Dimension:"minecraft:overworld"} run function magical_addons:entity/kill