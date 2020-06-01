# Stuff About Armor Stand For Positioning

# Store Player Coordinates
execute as @s store result score @s player_x run data get entity @s Pos[0]
execute as @s store result score @s player_y run data get entity @s Pos[1]
execute as @s store result score @s player_z run data get entity @s Pos[2]

# Store Player Rotation
execute as @s store result score @s player_rx run data get entity @s Rotation[0]
execute as @s store result score @s player_ry run data get entity @s Rotation[1]

# Display Player Coordinates
tellraw @a ["",{"text":"Your Coordinates: ("},{"score":{"name":"@p[tag=teleport_target]","objective":"player_x"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_y"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_z"}},{"text":")"}]

# Display Player Rotation
tellraw @a ["",{"text":"Your Rotation: ("},{"score":{"name":"@p[tag=teleport_target]","objective":"player_rx"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_ry"}},{"text":")"}]

# Display Armor Stand Coordinates
tellraw @a ["",{"text":"Armor Stand Coordinates: ("},{"score":{"name":"@s","objective":"player_x"}},{"text":", "},{"score":{"name":"@s","objective":"player_y"}},{"text":", "},{"score":{"name":"@s","objective":"player_z"}},{"text":")"}]

# Display Armor Stand Rotation
tellraw @a ["",{"text":"Armor Stand Rotation: ("},{"score":{"name":"@s","objective":"player_rx"}},{"text":", "},{"score":{"name":"@s","objective":"player_ry"}},{"text":")"}]

# Check Armor Stand World
execute at @s if entity @e[name=CustomPortalsMainSideMarker, distance=0.., type=armor_stand] run say Armor Stand is In Main Side

execute at @s if entity @e[name=CustomPortalsOtherSideMarker, distance=0.., type=armor_stand] run say Armor Stand is In Other Side