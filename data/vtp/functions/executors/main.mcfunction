# Enables commands
execute if entity @s[tag=vtp] run function vtp:executors/commands/enable

# Command events
execute if entity @s[tag=vtp,scores={VoidTP.Help=1..}] run function vtp:commands/help
execute unless entity @s[scores={VoidTP.MinHeight=0}] run function vtp:commands/min-height
execute if entity @s[tag=vtp,scores={VoidTP.SetSpawn=1..}] run function vtp:commands/setspawn
execute if entity @s[tag=vtp,scores={VoidTP.RemoveSpawn=1..}] run function vtp:commands/removespawn
execute if entity @s[tag=vtp,scores={VoidTP.TeleportToCurrent=1..}] run function vtp:commands/ttc/checker
execute if entity @s[tag=vtp,scores={VoidTP.ApplyEffect=1..}] run function vtp:commands/apply_effect/checker
execute if entity @s[tag=vtp,scores={VoidTP.SendToParent=1..}] run function vtp:commands/stp/checker

# Stores Y-Level data of the player
execute store result score @s .vtp run data get entity @s Pos[1]

# Once someone reaches minimum height this command is triggered
execute if score @s .vtp <= .min .vtp run function vtp:events/teleport_event/min_height with storage vtp:voidtp i