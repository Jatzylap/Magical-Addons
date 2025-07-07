# main:join
# called by advancement: main:join_game

## Load
schedule function magical_addons:main/first 65
schedule function magical_addons:main/second 115
schedule function magical_addons:main/third 116
schedule function magical_addons:main/fourth 117
schedule function magical_addons:main/fifth 118
schedule function magical_addons:main/sixth 119
schedule function magical_addons:main/seventh 120
schedule function magical_addons:main/final 121

## Reset
tag @s remove magical_addons
advancement revoke @s from magical_addons:---/main/root
advancement revoke @s from magical_addons:---/block/root
advancement revoke @s from magical_addons:---/entity/root
advancement revoke @s from magical_addons:---/dungeon/root
advancement revoke @s from magical_addons:---/shared/root
advancement revoke @s from magical_addons:---/dimension/root
advancement revoke @s from magical_addons:---/item/root
advancement revoke @s from magical_addons:---/player/root
advancement revoke @s from magical_addons:---/recipe/root
scoreboard players add @s maddons.mana 0
scoreboard players enable @s maddons.developer_mode
scoreboard players enable @s maddons.get_items
scoreboard players reset @s maddons.leave_game

## Register
tag @s add maddons.player
function magical_addons:dev/register_entity {cmd:"function magical_addons:player/loop"}