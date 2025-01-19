# main:register
# called by: main:two_seconds

### Player
execute at @s[type=player] run return run function magical_addons:dev/register_entity {id:"player",cmd:"function magical_addons:player/loop"}

## Angry chicken
execute at @s[tag=maddons.angry_chicken] run return run function magical_addons:dev/register_entity {id:"angry_chicken",cmd:"function magical_addons:entity/behaviours/angry_chicken/loop"}

## Screaming goat
execute at @s[tag=maddons.screaming_goat] run return run function magical_addons:dev/register_entity {id:"screaming_goat",cmd:"function magical_addons:entity/behaviours/screaming_goat/loop"}

## Soul
execute at @s[tag=maddons.soul] run return run function magical_addons:dev/register_entity {id:"soul",cmd:"function magical_addons:entity/soul/loop"}

## Sculk spider
execute at @s[tag=maddons.sculk_spider] run return run function magical_addons:dev/register_entity {id:"sculk_spider",cmd:"function magical_addons:entity/sculk_spider/loop"}

## Flying cow
execute at @s[tag=maddons.flying_cow] run return run function magical_addons:dev/register_entity {id:"flying_cow",cmd:"function magical_addons:entity/flying_cow/loop"}

## Dragon
#execute at @s[tag=maddons.dragon] run return run function magical_addons:dev/register_entity {id:"dragon",cmd:"function magical_addons:entity/dragon/loop"}

## Echoman
#execute at @s[tag=maddons.echoman] run return run function magical_addons:dev/register_entity {id:"echoman",cmd:"function magical_addons:entity/echoman/loop"}

## Automaton
#execute at @s[tag=maddons.automaton,tag=ai] run return run function magical_addons:dev/register_entity {id:"automaton",cmd:"function magical_addons:entity/automaton/loop"}

## Herobrine
#execute at @s[tag=maddons.herobrine,tag=ai] run return run function magical_addons:dev/register_entity {id:"herobrine",cmd:"function magical_addons:entity/herobrine/loop"}
