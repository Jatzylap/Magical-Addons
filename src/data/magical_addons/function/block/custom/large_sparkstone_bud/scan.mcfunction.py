import os
from src.utils import Generator

HEADERS = ['# block:custom/large_sparkstone_bud/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:spawner{{components:{{"minecraft:custom_data":{{magical_addons:{{generated:0b,id:"large_sparkstone_bud"}}}}}}}} run function magical_addons:block/custom/large_sparkstone_bud/place'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'custom', 'large_sparkstone_bud')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')