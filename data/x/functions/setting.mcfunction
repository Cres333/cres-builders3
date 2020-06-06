execute if entity @p[team=play] run tellraw @a {"text":"> ゲーム実行中のため、変更できません","color":"red"}
execute unless entity @p[team=play] run function x:setting_detail
