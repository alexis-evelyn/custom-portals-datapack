# Store Scores of Player Position in Armor Stand (Effectively Teleporting Armor Stand)
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=teleport_target] player_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=teleport_target] player_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=teleport_target] player_z

# Store Scores of Player Rotation in Armor Stand
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p[tag=teleport_target] player_rx
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p[tag=teleport_target] player_ry

# Debug Positioning
# execute at @s run function portals:debug/debug_positioning

# Teleport Player to Armor Stand and Rotate Player in the Same Direction as Armor Stand
execute at @s run tp @p[tag=teleport_target] ~ ~ ~ ~ ~

# Generate Portal On Opposite Side of Player Prior to Teleportation
execute at @s run function portals:generation/generate_portal_z

# Kill Armor Stand
kill @s