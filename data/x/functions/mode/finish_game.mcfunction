# ゲーム終了
execute unless score *phase Grobal matches 0 run tellraw @a[team=play] {"color":"yellow","text":"[説明] ゲーム終了後、黄色のエリアから建築物を見て回れます"}

scoreboard objectives remove ID
scoreboard objectives remove BuildPos1
scoreboard objectives remove BuildPos2
scoreboard objectives remove BuildPos3
scoreboard objectives remove AnsPos1
scoreboard objectives remove AnsPos2
scoreboard objectives remove AnsPos3
scoreboard players reset * Ready
scoreboard players set *playerNum Grobal 0
scoreboard players set *phase Grobal 0
scoreboard players operation *timeRemain Grobal = *timeLimit Grobal
gamemode adventure @a[team=play]
clear @a
tp @a 240 61.5 -40 180 0
xp set @a 0 levels

team empty play
