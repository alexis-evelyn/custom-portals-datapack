# Being Run as Armor Stand Named Found (From Fire Locating Function)
# minecraft:nether_portal[axis=z]

# Range To Check - 9 Blocks
# Pos 1: ~ ~ ~-1
# Pos 2: ~ ~2 ~1

# Tags To Check After Marking Armor Stand - Can only be 1-6 or 4-9
execute if block ~ ~ ~-1 #minecraft:temporary_marker run tag @s add 1
execute if block ~ ~1 ~-1 #minecraft:temporary_marker run tag @s add 2
execute if block ~ ~2 ~-1 #minecraft:temporary_marker run tag @s add 3
execute if block ~ ~ ~ #minecraft:temporary_marker run tag @s add 4
execute if block ~ ~1 ~ #minecraft:temporary_marker run tag @s add 5
execute if block ~ ~2 ~ #minecraft:temporary_marker run tag @s add 6
execute if block ~ ~ ~1 #minecraft:temporary_marker run tag @s add 7
execute if block ~ ~1 ~1 #minecraft:temporary_marker run tag @s add 8
execute if block ~ ~2 ~1 #minecraft:temporary_marker run tag @s add 9

# Check Successful Tags
execute if entity @s[tag=1] if entity @s[tag=2] if entity @s[tag=3] if entity @s[tag=4] if entity @s[tag=5] if entity @s[tag=6] run tag @s add success_1
execute if entity @s[tag=4] if entity @s[tag=5] if entity @s[tag=6] if entity @s[tag=7] if entity @s[tag=8] if entity @s[tag=9] run tag @s add success_2

# Replace Successful Blocks
execute if entity @s[tag=success_1] run fill ~ ~ ~-1 ~ ~2 ~ minecraft:nether_portal[axis=z] replace #minecraft:temporary_marker
execute if entity @s[tag=success_2] run fill ~ ~ ~ ~ ~2 ~1 minecraft:nether_portal[axis=z] replace #minecraft:temporary_marker

# Replace any Non-Successful Blocks
fill ~ ~ ~-1 ~ ~2 ~1 minecraft:air replace #minecraft:temporary_marker

# Since Or is not a logic gate in the execute command, we have to store temporary data to check
execute if entity @s[tag=success_1] run tag @s add success
execute if entity @s[tag=success_2] run tag @s add success

# If Failed, Set Fire Back - For some reason, this script runs twice when a successful portal is made (and once when it fails), so I have to check for a portal wall to ensure it only runs once when a successful portal is made

# If Not Soul Fire Block, Place Regular Fire
execute unless entity @s[tag=success] unless block ~ ~1 ~ #minecraft:portal_wall unless block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run setblock ~ ~ ~ minecraft:fire

# If Soul Fire Block, Place Soul Fire
execute unless entity @s[tag=success] unless block ~ ~1 ~ #minecraft:portal_wall if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run setblock ~ ~ ~ minecraft:soul_fire