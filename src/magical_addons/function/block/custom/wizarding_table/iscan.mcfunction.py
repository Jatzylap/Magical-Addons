import os
from src.utils import Generator

HEADERS = ['# block:custom/wizarding_table/iscan', '# called by: iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ #magical_addons:wizarding_table{{components:{{"minecraft:custom_data":{{magical_addons:{{id:"wizarding_table"}}}}}}}} run function magical_addons:block/custom/wizarding_table/interact'
PATH = os.path.join(self.out_path, self.out_name, 'magical_addons', 'function', 'block', 'custom', 'wizarding_table')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'iscan')