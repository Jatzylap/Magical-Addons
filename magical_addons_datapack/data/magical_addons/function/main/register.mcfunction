# main:register
# called by: main:two_seconds

## Player
execute at @s[type=player] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:player/loop"}

## Mobs
execute at @s[tag=maddons.angry_chicken] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/angry_chicken/loop"}
#execute at @s[tag=maddons.screaming_goat] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/screaming_goat/loop"}
execute at @s[tag=maddons.player_display] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/player_display/loop"}
execute at @s[tag=maddons.sculk_spider] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/sculk_spider/loop"}

## Blocks
execute at @s[tag=maddons.wizarding_table] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/custom/wizarding_table/tick"}
execute at @s[tag=maddons.brewing_stand] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/vanilla/brewing_stand/tick"}
execute at @s[tag=maddons.gravitite_ore] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/custom/gravitite_ore/tick"}

## Particles
#execute at @s[tag=maddons.ring_of_fire] run return run function magical_addons:dev/register_entity {cmd:"function magical_addons:particle/ring_of_fire?"}