## 各エリアのIDを設定
execute if score *n Random matches 1 if score *playerNum Grobal matches ..6 run function x:id/pattern/_t1
execute if score *n Random matches 2 if score *playerNum Grobal matches ..6 run function x:id/pattern/_t2
execute if score *n Random matches 3 if score *playerNum Grobal matches ..6 run function x:id/pattern/_t3
execute if score *n Random matches 4 if score *playerNum Grobal matches ..6 run function x:id/pattern/_t4
execute if score *n Random matches 1 if score *playerNum Grobal matches 7.. run function x:id/pattern/_p1
execute if score *n Random matches 2 if score *playerNum Grobal matches 7.. run function x:id/pattern/_p2
execute if score *n Random matches 3 if score *playerNum Grobal matches 7.. run function x:id/pattern/_p3
execute if score *n Random matches 4 if score *playerNum Grobal matches 7.. run function x:id/pattern/_p4

## 人数を超えた分を調整
execute if score @s BuildPos1 > *playerNum Grobal run scoreboard players operation @s BuildPos1 -= *playerNum Grobal
execute if score @s BuildPos2 > *playerNum Grobal run scoreboard players operation @s BuildPos2 -= *playerNum Grobal
execute if score @s BuildPos3 > *playerNum Grobal run scoreboard players operation @s BuildPos3 -= *playerNum Grobal
execute if score @s AnsPos1 > *playerNum Grobal run scoreboard players operation @s AnsPos1 -= *playerNum Grobal
execute if score @s AnsPos2 > *playerNum Grobal run scoreboard players operation @s AnsPos2 -= *playerNum Grobal
execute if score @s AnsPos3 > *playerNum Grobal run scoreboard players operation @s AnsPos3 -= *playerNum Grobal
