import os
from src.utils import Generator

HEADERS = ['# block:custom/golden_oak_sapling/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:spawner{{components:{{"minecraft:custom_data":{{magical_addons:{{generated:0b,id:"golden_oak_sapling"}}}}}}}} run function magical_addons:block/custom/golden_oak_sapling/place'
PATH = os.path.join(self.out_path, self.out_name, 'magical_addons', 'function', 'block', 'custom', 'golden_oak_sapling')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')