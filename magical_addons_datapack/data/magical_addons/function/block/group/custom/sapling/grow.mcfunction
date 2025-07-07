# block:group/custom/sapling/grow
# called by: main:one_second

$execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{group:"sapling"}}}} if predicate magical_addons:block/skylit run function magical_addons:block/custom/$(id)/grow