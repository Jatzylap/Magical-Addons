function gu:convert with entity @s

$data merge storage gu:main {id:"$(id)",cmd:"$(cmd)"}

function magical_addons:dev/---/register_entity/0 with storage gu:main

tag @s add maddons.registered