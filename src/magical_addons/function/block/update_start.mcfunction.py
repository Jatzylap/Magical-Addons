import os
from src.utils import Generator

HEADERS = ['# block:update_start', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ #magical_addons:in_scan run function magical_addons:block/update'
PATH = os.path.join(self.out_path, self.out_name, 'magical_addons', 'function', 'block')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 3, 1, 'update_start')