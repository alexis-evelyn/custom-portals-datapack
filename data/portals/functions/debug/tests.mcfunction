# Store Player Coordinates
execute as @s store result score @s player_x run data get entity @s Pos[0]
execute as @s store result score @s player_y run data get entity @s Pos[1]
execute as @s store result score @s player_z run data get entity @s Pos[2]

# Store Player Rotation
execute as @s store result score @s player_rx run data get entity @s Rotation[0]
execute as @s store result score @s player_ry run data get entity @s Rotation[1]

# Display Player Coordinates
tellraw @a ["",{"text":"Your Coordinates: ("},{"score":{"name":"@s","objective":"player_x"}},{"text":", "},{"score":{"name":"@s","objective":"player_y"}},{"text":", "},{"score":{"name":"@s","objective":"player_z"}},{"text":")"}]

# Display Player Rotation
tellraw @a ["",{"text":"Your Rotation: ("},{"score":{"name":"@s","objective":"player_rx"}},{"text":", "},{"score":{"name":"@s","objective":"player_ry"}},{"text":")"}]


# Warn of Usage of this Function!!!
tellraw @a {"text":"This function is not meant to be ran by anyone for normal usage of this datapack. Only use this if you are debugging the datapack. This function may mess up regular usage of the datapack in the future or potentially now.","bold":false,"underlined":true,"color":"#FF0000"}