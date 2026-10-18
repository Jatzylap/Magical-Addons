import os
from src.utils import Generator

HEADER = [
	'# block:custom/golden_oak_leaves/pathfind',
	'# called by: block:group/custom/leaves/decay',
	'\n',
	'## Clear nodes',
	'kill @e[type=marker,tag=numbered]'
]

FOOTER = [
	'## Search node tree',
	'execute as @e[tag=numbered] at @s store result block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path int 1 run data get entity @s data.magical_addons.path',
	'\n',
	'## Lookup node for distance=1: if node has neighbour log',
	'execute at @e[type=marker,tag=numbered,tag=1] if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail',
	'\n',
	'## Lookup node for distance=2: if node has neighbour for distance=1 and end was found, then stop search, if node has no neighbours for distance=1, then mark position as visited',
	'execute at @e[type=marker,tag=numbered,tag=2] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_1 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail',
	'execute at @e[type=marker,tag=numbered,tag=2] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_1 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path',
	'\n',
	'## Lookup node for distance=3: if node has neighbour for distance=2 and end was found, then stop search, if node has no neighbours for distance=2, then mark position as visited',
	'execute at @e[type=marker,tag=numbered,tag=3] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_2 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail',
	'execute at @e[type=marker,tag=numbered,tag=3] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_2 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path',
	'\n',
	'## Lookup node for distance=4: if node has neighbour for distance=3 and end was found, then stop search, if node has no neighbours for distance=3, then mark position as visited',
	'execute at @e[type=marker,tag=numbered,tag=4] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_3 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail',
	'execute at @e[type=marker,tag=numbered,tag=4] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_3 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path',
	'\n',
	'## Lookup node for distance=5: if node has neighbour for distance=4 and end was found, then stop search, if node has no neighbours for distance=4, then mark position as visited',
	'execute at @e[type=marker,tag=numbered,tag=5] if predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_4 if predicate magical_addons:block/golden_oak_leaves/will_survive_on_log run return fail',
	'execute at @e[type=marker,tag=numbered,tag=5] unless predicate magical_addons:block/golden_oak_leaves/has_neighbour_leaf_4 run data remove block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path',
	'\n',
	'## Oh well... Too bad!',
	'function magical_addons:block/custom/golden_oak_leaves/decay'
]

COMMAND = 'execute positioned ~{x} ~{y} ~{z} if data block ~ ~ ~ {{components:{{"minecraft:custom_data":{{magical_addons:{{id:"golden_oak_leaves"}}}}}}}} run summon marker ~ ~ ~ {{Tags:["numbered","{sum}"],data:{{magical_addons:{{path:{sum}}}}}}}'
PATH = os.path.join(self.out_path, self.out_name, 'magical_addons', 'function', 'block', 'custom', 'golden_oak_leaves')
Generator.nodeSearchTree(HEADER, FOOTER, PATH, COMMAND, 5, 1, 'pathfind')