execute if entity @p[team=play] run tellraw @a {"text":"> ゲーム実行中のため、実行できません","color":"red"}
execute unless entity @p[team=play] run function x:mode/start_game
