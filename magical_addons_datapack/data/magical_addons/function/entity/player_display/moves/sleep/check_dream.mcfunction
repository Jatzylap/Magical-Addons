# entity:player_display/sleep/check_dream
# called by: entity:player_display/check_global

$execute if data entity $(player_name) {Tags:["maddons.dreaming"]} run function magical_addons:entity/player_display/moves/sleep/occupy_bed

$execute unless data entity $(player_name) {Tags:["maddons.dreaming"]} as $(player_name) at @s if dimension overworld run function magical_addons:dev/restore_inventory {slot:outAether}

$execute unless data entity $(player_name) {Tags:["maddons.dreaming"]} if data entity $(player_name) {Dimension:"minecraft:overworld"} run function magical_addons:entity/player_display/moves/sleep/unoccupy_bed

$execute unless data entity $(player_name) {Tags:["maddons.dreaming"]} if data entity $(player_name) {Dimension:"minecraft:overworld"} run function magical_addons:entity/kill