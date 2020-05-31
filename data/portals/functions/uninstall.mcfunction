# Erase Old Scoreboards as They Aren't Likely Being Used if Datapack is Uninstall
scoreboard objectives remove used_flintsteel
scoreboard objectives remove used_firecharge
scoreboard objectives remove search_fire
scoreboard objectives remove skip_fire

scoreboard objectives add player_x dummy
scoreboard objectives add player_y dummy
scoreboard objectives add player_z dummy

# Remove Forceloading of 0, 0 (Previously Used for Data Storage)
forceload remove 0 0

# Remove Armor Stand Used For Data Storage
execute positioned 0 -10 0 as @e[name=CustomPortalsDataStorage, type=minecraft:armor_stand, distance=..1] at @s run kill @s

# TODO: Remove Armor Stand and Force Loading For All Worlds Used By Datapack
# Namely Other Side and Main Side

# Announce Uninstall
tellraw @p ["",{"text":"Uninstalled Custom Portals Datapack!!! ","bold":false,"color":"aqua"},{"text":"Click here for the command to reinstall the datapack in the future!!!","bold":false,"underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/function portals:init"}}]