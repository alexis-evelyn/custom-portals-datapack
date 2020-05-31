# Idea From: UncleThaodan at https://www.youtube.com/watch?v=CyGYt7Npxsk&lc=UgyNnWSwUs_-u6qEKSF4AaABAg&ab_channel=emeraldfyr3

# - Summon a throwaway entity at the player position
# - Execute the following as the entity (Make sure the entire function gets run as the entity):
# tag @p add target
# execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=target] <scoreboard objective for x>
# execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=target] <scoreboard objective for y>
# execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=target] <scoreboard objective for z>
# tp @p[tag=target] @s
# tag @p[tag=target] remove target
# kill @s

# Store Player Coordinates
# execute as @a[x=0] store result score @s player_x run data get entity @s Pos[0]
# execute as @a[x=0] store result score @s player_y run data get entity @s Pos[1]
# execute as @a[x=0] store result score @s player_z run data get entity @s Pos[2]

# Store Player Rotation
# execute as @s store result score @s player_rx run data get entity @s Rotation[0]
# execute as @s store result score @s player_ry run data get entity @s Rotation[1]

# Summon Armor Stand at Player Position
execute at @a[x=0] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"TemporaryDynamicTeleporter\"", NoGravity: true, CustomNameVisible: false, Invisible: false, Marker: false}

# Tag Player
tag @a[x=0] add teleport_target

# Run Teleport Helper
# Noted By: https://www.reddit.com/r/MinecraftCommands/comments/fd1lds/new_method_to_tp_to_scoreboard_values/
execute as @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run function portals:teleport_armorstand_helper

# Remove Tag Marking Player
tag @p[tag=teleport_target] remove teleport_target