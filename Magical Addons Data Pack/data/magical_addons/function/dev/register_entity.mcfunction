# dev:register_entity
# called by: <dev>

function gu:convert with entity @s

$data merge storage gu:main {tick_cmd:'$(tick_cmd)'}

function magical_addons:dev/---/register_entity/0 with storage gu:main

tag @s add maddons.registered