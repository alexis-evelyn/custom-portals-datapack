execute in alexis:glass as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall run execute run function portals:teleport_main_side

execute in minecraft:overworld as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall run execute in minecraft:overworld run function portals:teleport_other_side