# This teleport function lazily checks the portal direction by looking at minecraft:nether_portal's axis. This can be improved so that it would check the #portal_frame's direction instead. Checking the #portal_frame's direction would allow for other #minecraft:portal_wall's instead of just minecraft:nether_portal.

# NOTE: @s currently refers to "Server" as this function was not run with a previous selector!!!

# Store Player Coordinates Prior to Initial Teleportation
# execute as @s store result score @s player_x run data get entity @s Pos[0]
# execute as @s store result score @s player_y run data get entity @s Pos[1]
# execute as @s store result score @s player_z run data get entity @s Pos[2]

# Function to Run on Main Side Teleportation
function portals:teleportation/main/teleport_main_side

# Function to Run on Other Side Teleportation
function portals:teleportation/other/teleport_other_side