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
execute at @a[x=0] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"TemporaryDynamicTeleporter\"", NoGravity: true, CustomNameVisible: false, Invisible: false, Marker: true}

# Tag Player
tag @a[x=0] add teleport_target

# Store Scores of Player Position in Armor Stand (Effectively Teleporting Armor Stand)
# This is a bit buggy where Minecraft will recognize the armor stand's coordinates for nbt data retrieval but the kill command won't find the armor stand here. Neither will the renderer until the data is read using /data get entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Pos
execute store result entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Pos[0] double 1 run scoreboard players get @p[tag=teleport_target] player_x
execute store result entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Pos[1] double 1 run scoreboard players get @p[tag=teleport_target] player_y
execute store result entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Pos[2] double 1 run scoreboard players get @p[tag=teleport_target] player_z

# Store Scores of Player Rotation in Armor Stand
execute store result entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Rotation[0] float 1 run scoreboard players get @p[tag=teleport_target] player_rx
execute store result entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Rotation[1] float 1 run scoreboard players get @p[tag=teleport_target] player_ry

# Teleport Player to Armor Stand
execute at @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run tp @p[tag=teleport_target] ~ ~ ~ ~ ~

# This does not work except occasionally when executed by the player. The idea is to force Minecraft to update the armor stand's position so I can kill it without interfering with other armor stands of the same name. Probably isn't necessary either way since Minecraft is mostly single threaded and all of the functions summoning and interacting with the armor stand occur in the same file under the same function declaration.
# data get entity @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] Pos

# Kill Armor Stand - May or May Not Break Multiplayer if it Even Worked to Begin With
execute as @p[tag=teleport_target] run kill @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1]

# Remove Tag Marking Player
tag @p[tag=teleport_target] remove teleport_target