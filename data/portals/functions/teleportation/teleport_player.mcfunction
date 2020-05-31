# This teleport function lazily checks the portal direction by looking at minecraft:nether_portal's axis. This can be improved so that it would check the #portal_frame's direction instead. Checking the #portal_frame's direction would allow for other #minecraft:portal_wall's instead of just minecraft:nether_portal.

# Store Player Coordinates Prior to Initial Teleportation
execute as @s store result score @s player_x run data get entity @s Pos[0]
execute as @s store result score @s player_y run data get entity @s Pos[1]
execute as @s store result score @s player_z run data get entity @s Pos[2]

# Lazy Check For Portal Direction Z
execute in alexis:glass as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=z] run function portals:teleportation/main/teleport_main_side_z

execute in minecraft:overworld as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=z] run function portals:teleportation/other/teleport_other_side_z


# Lazy Check For Portal Direction X
execute in alexis:glass as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=x] run function portals:teleportation/main/teleport_main_side_x

execute in minecraft:overworld as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=x] run function portals:teleportation/other/teleport_other_side_x