import os
from src.utils import Generator

HEADERS = ['# block:vanilla/smooth_stone_slab/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:smooth_stone_slab[type=double] run setblock ~ ~ ~ smooth_stone'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'vanilla', 'smooth_stone_slab')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')
