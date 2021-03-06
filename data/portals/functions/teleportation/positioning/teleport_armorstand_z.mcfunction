# Store Player Coordinates
execute as @s store result score @s player_x run data get entity @s Pos[0]
execute as @s store result score @s player_y run data get entity @s Pos[1]
execute as @s store result score @s player_z run data get entity @s Pos[2]

# Store Player Rotation
execute as @s store result score @s player_rx run data get entity @s Rotation[0]
execute as @s store result score @s player_ry run data get entity @s Rotation[1]

# Adjust Armorstand Position
scoreboard players remove @s player_x 1

# Tag Player
tag @s add teleport_target

# Run Teleport Helper
# Noted By: https://www.reddit.com/r/MinecraftCommands/comments/fd1lds/new_method_to_tp_to_scoreboard_values/
execute as @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run function portals:teleportation/positioning/teleport_armorstand_helper_z

# Remove Tag Marking Player
tag @p[tag=teleport_target] remove teleport_target