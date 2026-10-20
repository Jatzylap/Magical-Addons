import os
from src.utils import Generator

HEADERS = ['# dungeon:aether_portal/scan', '# called by: magical_addons:entity/lightning_bolt/set, iris:raycast/macro_functions/callback']
COMMAND = 'execute align xyz positioned ~.5 ~.5 ~.5 positioned ~{x} ~{y} ~{z} if block ~ ~ ~ #magical_addons:aether_portal[part=foot] unless entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] run function magical_addons:dungeon/aether_portal/check_frame'
PATH = os.path.join(self.out_path, self.out_name, 'data', 'magical_addons', 'function', 'dungeon', 'aether_portal')
Generator.squareRadiusFromOrigin(HEADERS, PATH, COMMAND, 5, 1, 'scan')
