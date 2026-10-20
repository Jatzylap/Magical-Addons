import os
from src.utils import Generator

HEADERS = ['# block:mine_scan', '# called by: block:mine']
COMMAND = 'execute positioned ~{x} ~{y} ~{z} if block ~ ~ ~ #magical_addons:in_scan unless entity @n[type=item_display,tag=maddons.block,distance=...5] run function magical_addons:block/set_id'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'block')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 2, 1, 'mine_scan')