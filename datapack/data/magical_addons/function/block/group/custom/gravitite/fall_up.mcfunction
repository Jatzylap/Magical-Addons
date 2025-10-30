# block:group/custom/gravitite/fall_up
# called by: main:one_second

$execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{groups:["gravitite"]}}}} if block ~ ~.5 ~ #magical_addons:non_collidable run function magical_addons:block/custom/$(id)/fall_up