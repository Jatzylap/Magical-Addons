import os
from src.utils import Generator

HEADERS = ['# block:vanilla/brewing_stand/scan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:brewing_stand unless entity @n[type=item_display,distance=...5,tag=maddons.block] run function magical_addons:block/vanilla/brewing_stand/place'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block', 'vanilla', 'brewing_stand')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')
