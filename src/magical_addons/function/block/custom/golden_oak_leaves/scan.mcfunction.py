import os
from src.utils import Generator

HEADERS = ['# block:custom/golden_oak_leaves/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:spawner{{components:{{"minecraft:custom_data":{{magical_addons:{{generated:0b,id:"golden_oak_leaves"}}}}}}}} unless entity @n[type=#magical_addons:display,tag=maddons.block,distance=...5] run function magical_addons:block/custom/golden_oak_leaves/place'
PATH = os.path.join(self.out_path, self.out_name, 'magical_addons', 'function', 'block', 'custom', 'golden_oak_leaves')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')