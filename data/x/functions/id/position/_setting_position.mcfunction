## デフォルト値のセット
scoreboard players operation @s BuildPos1 = @s ID
scoreboard players operation @s BuildPos2 = @s ID
scoreboard players operation @s BuildPos3 = @s ID
scoreboard players operation @s AnsPos1 = @s ID
scoreboard players operation @s AnsPos2 = @s ID
scoreboard players operation @s AnsPos3 = @s ID

execute if score *mode Grobal matches 0 run function x:id/position/_random_position
execute if score *mode Grobal matches 2 run function x:id/position/_tail_position
