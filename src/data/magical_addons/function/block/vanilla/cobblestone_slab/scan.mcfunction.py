import os
from src.utils import Generator

HEADERS = ['# block:vanilla/cobblestone_slab/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:cobblestone_slab[type=double] run setblock ~ ~ ~ cobblestone'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'vanilla', 'cobblestone_slab')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')
