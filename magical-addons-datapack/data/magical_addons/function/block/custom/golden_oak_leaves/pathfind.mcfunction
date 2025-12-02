# block:custom/golden_oak_leaves/pathfind
# called by: block:group/custom/leaves/decay

## Clear nodes
kill @e[type=marker,tag=numbered]

## Set nodes
execute positioned ~-5 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-4 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-4 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-4 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-4 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-4 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-3 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-3 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-3 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-3 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-3 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-3 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~-3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~-2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~-2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~-1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-2 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~-1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~0 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-2 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~-2 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-2 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~0 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-2 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-2 ~2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-2 ~3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~-3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~-2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~-2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~-1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~-1 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~-1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~-1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~0 ~-4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~0 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~-1 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
execute positioned ~-1 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~-1 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~0 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~0 ~4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~-1 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~-1 ~2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~-1 ~3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~-1 ~4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-5 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-4 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-4 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-3 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~-3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-3 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-2 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~-2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~-2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-2 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-1 ~-4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~-1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
execute positioned ~0 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~-1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~-1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~-1 ~4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~0 ~-5 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~0 ~-4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~0 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
#execute positioned ~0 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','0'],data:{magical_addons:{path:0}}}
execute positioned ~0 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
execute positioned ~0 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~0 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~0 ~4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~0 ~5 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~1 ~-4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
execute positioned ~0 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~1 ~4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~2 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~0 ~2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~2 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~3 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~0 ~3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~3 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~4 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~0 ~4 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~0 ~5 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~-3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~-2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~-2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~-1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~1 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~-1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~-1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~0 ~-4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~0 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~1 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','1'],data:{magical_addons:{path:1}}}
execute positioned ~1 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~1 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~0 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~0 ~4 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~1 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~1 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~1 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~2 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~1 ~2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~2 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~3 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~1 ~3 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~1 ~4 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~-3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~-2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~-2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~-1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~2 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~-1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~0 ~-3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~2 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','2'],data:{magical_addons:{path:2}}}
execute positioned ~2 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~2 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~0 ~3 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~1 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~2 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~1 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~2 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~2 ~2 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~2 ~3 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~-2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~-1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~3 ~-1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~0 ~-2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~3 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','3'],data:{magical_addons:{path:3}}}
execute positioned ~3 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~3 ~0 ~2 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~1 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~3 ~1 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~3 ~2 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~4 ~-1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~4 ~0 ~-1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~4 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','4'],data:{magical_addons:{path:4}}}
execute positioned ~4 ~0 ~1 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~4 ~1 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}
execute positioned ~5 ~0 ~0 if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"golden_oak_leaves"}}}} run summon marker ~ ~ ~ {Tags:['numbered','5'],data:{magical_addons:{path:5}}}

## Search node tree
execute as @e[tag=numbered] at @s store result block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path int 1 run data get entity @s data.magical_addons.path

## Lookup node for distance=1: if node has neighbour log
execute at @e[type=marker,tag=numbered,tag=1] if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail

## Lookup node for distance=2: if node has neighbour for distance=1 and end was found, then stop search, if node has no neighbours for distance=1, then mark position as visited
execute at @e[type=marker,tag=numbered,tag=2] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_1 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail
execute at @e[type=marker,tag=numbered,tag=2] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_1 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path

## Lookup node for distance=3: if node has neighbour for distance=2 and end was found, then stop search, if node has no neighbours for distance=2, then mark position as visited
execute at @e[type=marker,tag=numbered,tag=3] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_2 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail
execute at @e[type=marker,tag=numbered,tag=3] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_2 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path

## Lookup node for distance=4: if node has neighbour for distance=3 and end was found, then stop search, if node has no neighbours for distance=3, then mark position as visited
execute at @e[type=marker,tag=numbered,tag=4] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_3 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail
execute at @e[type=marker,tag=numbered,tag=4] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_3 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path

## Lookup node for distance=5: if node has neighbour for distance=4 and end was found, then stop search, if node has no neighbours for distance=4, then mark position as visited
execute at @e[type=marker,tag=numbered,tag=5] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_4 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail
execute at @e[type=marker,tag=numbered,tag=5] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_4 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path

## Oh well... Too bad!
function magical_addons:block/custom/golden_oak_leaves/decay