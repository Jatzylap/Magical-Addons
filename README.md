# Magical Addons
A Data Pack for Minecraft Java

Currently in development.

**Datapack version:** 0.0.1a

## Setup

**<ins>Requires:</ins>** Minecraft 1.21.4
> - Locate your .minecraft installation directory
> - To add the data pack to an existing world : drop the "Magical Addons Data Pack" folder into the “datapacks” directory of your world
> - To add the data pack to a new world : select the "More" tab in the new world settings, click "Data Packs", then drag the "Magical Addons Data Pack" into the Minecraft window
> - Drop the "Magical Addons Resource Pack" folder into the “resourcepacks” directory
> - Select the "Magical Addons Resource Pack" from your resource pack list

## Known issues / Limitations

> - Light diffusion from glowing ores shrinks with low FOV or when looking away from its center
(this is due to billboard culling)
> - Light diffusion from glowing ores may flicker with "View Bobbing"
> - Custom transparent block models cull vanilla block faces
> - Custom effect tabs do not appear in inventory
> -- Item models do not support language-based conditions
> - Certain blockstates set with commands show custom block textures and remain silent until the next chunk update or block placement : **Chiseled Bookshelf, **Potted Fern** (use the command below to remove a specific chunk):
 ```bash
/data remove storage maddons.dimension:() data.chunks[{x:*,y:*,z:*}]
```
> - Looking just above an area of custom blocks with a high **minecraft:block_interaction** attribute will cause
TPS to rise
