# Stuff About Armor Stand For Positioning
# data get entity @s Pos


# Display Player Coordinates
tellraw @a ["",{"text":"Your Coordinates: ("},{"score":{"name":"@p[tag=teleport_target]","objective":"player_x"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_y"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_z"}},{"text":")"}]

# Display Player Rotation
tellraw @a ["",{"text":"Your Rotation: ("},{"score":{"name":"@p[tag=teleport_target]","objective":"player_rx"}},{"text":", "},{"score":{"name":"@p[tag=teleport_target]","objective":"player_ry"}},{"text":")"}]