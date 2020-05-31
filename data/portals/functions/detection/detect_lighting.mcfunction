# NOTE: @s currently refers to "Server" as this function was not run with a previous selector!!!
# execute as @a[scores={used_flintsteel=1..}] run say Used Flint and Steel!!!

# Locate Fire if Player Used Fire Causing Item
function portals:detection/find_fire

# Reset Scores for Tools Used
scoreboard players reset @a used_flintsteel
scoreboard players reset @a used_firecharge

# Detect Potential Portal Location Marked By Armor Stand Location
function portals:detection/detect_portal