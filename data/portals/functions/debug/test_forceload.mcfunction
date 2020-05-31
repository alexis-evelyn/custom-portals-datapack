tp @a[x=0] 0 56 0 0 0

# Store Player Coordinates
scoreboard players set @a[x=0] player_x 10000
scoreboard players set @a[x=0] player_y 56
scoreboard players set @a[x=0] player_z 10000

# Store Player Rotation
scoreboard players set @a[x=0] player_rx 35
scoreboard players set @a[x=0] player_ry 50

# TODO: Put force load code here!!!

# Execute Debug Function to Test Teleportation
function portals:debug/test_scoreboard_teleport