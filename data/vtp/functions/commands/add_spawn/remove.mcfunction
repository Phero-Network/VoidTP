$execute run data remove storage vtp:voidtp custom.$(w)
execute run scoreboard players reset @s VoidTP.RemoveSpawn

# RemoveSpawn message
tellraw @s [{"text":"["},{"text":"VoidTP","color":"dark_purple"},{"text":"]"},{"text":" Successfully removed the spawn point.","italic":true,"color":"dark_red"}]