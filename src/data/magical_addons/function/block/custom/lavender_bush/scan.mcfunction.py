import os
from src.utils import Generator

HEADERS = ['# block:custom/lavender_bush/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:spawner{{components:{{"minecraft:custom_data":{{magical_addons:{{generated:0b,id:"lavender_bush"}}}}}}}} summon item_display run function magical_addons:block/custom/lavender_bush/place'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'custom', 'lavender_bush')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')