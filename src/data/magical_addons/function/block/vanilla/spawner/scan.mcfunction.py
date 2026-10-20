import os
from src.utils import Generator

HEADERS = ['# block:vanilla/spawner/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:spawner unless entity @n[type=item_display,distance=...5,tag=maddons.block] run function magical_addons:block/vanilla/spawner/place'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'vanilla', 'spawner')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')
