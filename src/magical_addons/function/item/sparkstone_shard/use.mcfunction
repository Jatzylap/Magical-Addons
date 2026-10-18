advancement revoke @s from magical_addons:---/item/use
recipe take @s magical_addons:---/use/sparkstone_shard

execute if entity @s[gamemode=!creative] run summon item ~ ~ ~ {Item:{id:"knowledge_book",count:1,components: { \
																item_model: "magical_addons:sparkstone_shard", \
																item_name: '{"translate":"item.magical_addons.sparkstone_shard"}', \
                												custom_data: "{magical_addons:{id:\"sparkstone_shard\"}}", \
                												rarity: "common", \
                												max_stack_size: 64, \
                												recipes:[ "magical_addons:---/use/sparkstone_shard" ]}}}