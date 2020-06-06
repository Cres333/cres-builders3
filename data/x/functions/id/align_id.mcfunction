# ID割当
## 初期化
team empty play
scoreboard objectives remove ID
scoreboard objectives add ID dummy "プレイヤーID"
## ID割り振り
scoreboard players set @r[team=join,limit=12] ID 0
scoreboard players set @r[scores={ID=0},limit=1] ID 1
scoreboard players set @r[scores={ID=0},limit=1] ID 2
scoreboard players set @r[scores={ID=0},limit=1] ID 3
scoreboard players set @r[scores={ID=0},limit=1] ID 4
scoreboard players set @r[scores={ID=0},limit=1] ID 5
scoreboard players set @r[scores={ID=0},limit=1] ID 6
scoreboard players set @r[scores={ID=0},limit=1] ID 7
scoreboard players set @r[scores={ID=0},limit=1] ID 8
scoreboard players set @r[scores={ID=0},limit=1] ID 9
scoreboard players set @r[scores={ID=0},limit=1] ID 10
scoreboard players set @r[scores={ID=0},limit=1] ID 11
scoreboard players set @r[scores={ID=0},limit=1] ID 12

# 参加者へ切り替え
team join play @a[scores={ID=1..}]

# 人数を取得
scoreboard players set *playerNum Grobal 0
scoreboard players operation *playerNum Grobal > @a[team=play] ID

execute if score *playerNum Grobal < *playerMin Grobal run function x:id/result/_fail
execute unless score *playerNum Grobal < *playerMin Grobal run function x:id/result/_success
