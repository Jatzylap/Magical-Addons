# main:register
# called by: main:two_seconds

## Player
execute at @s[type=player] run return run function magical_addons:dev/register_entity {id:"player",cmd:"function magical_addons:player/loop"}

## Mobs
execute at @s[tag=maddons.angry_chicken] run return run function magical_addons:dev/register_entity {id:"angry_chicken",cmd:"function magical_addons:entity/angry_chicken/loop"}
#execute at @s[tag=maddons.screaming_goat] run return run function magical_addons:dev/register_entity {id:"screaming_goat",cmd:"function magical_addons:entity/screaming_goat/loop"}
execute at @s[tag=maddons.player_display] run return run function magical_addons:dev/register_entity {id:"player_display",cmd:"function magical_addons:entity/player_display/loop"}
execute at @s[tag=maddons.sculk_spider] run return run function magical_addons:dev/register_entity {id:"sculk_spider",cmd:"function magical_addons:entity/sculk_spider/loop"}

## Blocks
execute at @s[tag=maddons.wizarding_table] run return run function magical_addons:dev/register_entity {id:"wizarding_table",cmd:"function magical_addons:block/custom/wizarding_table/tick"}
execute at @s[tag=maddons.brewing_stand] run return run function magical_addons:dev/register_entity {id:"wizarding_table",cmd:"function magical_addons:block/vanilla/brewing_stand/tick"}

## Spells
execute at @s[tag=maddons.sparkstone_blast] run return run function magical_addons:dev/register_entity {id:"sparkstone_blast",cmd:"function magical_addons:item/dagger/sparkstone_orb/explosion_effects/3"}