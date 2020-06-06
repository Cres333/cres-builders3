# ゲーム開始失敗時
## 元に戻す
scoreboard objectives remove ID
scoreboard objectives remove BuildPos1
scoreboard objectives remove BuildPos2
scoreboard objectives remove BuildPos3
scoreboard objectives remove AnsPos1
scoreboard objectives remove AnsPos2
scoreboard objectives remove AnsPos3
scoreboard players reset * Ready
scoreboard players set *playerNum Grobal 0
scoreboard players set *phase Grobal -1
scoreboard players operation *timeRemain Grobal = *timeLimit Grobal
gamemode adventure @a[team=play]
clear @a[team=play]
tp @a[team=play] 240 61.5 -40 180 0

team join join @a[team=play]
team empty play

tellraw @a {"text":"> 参加人数が足りませんでした","color":"red"}
