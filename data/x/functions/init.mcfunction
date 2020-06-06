# スコアボード設定
scoreboard objectives add Grobal dummy
scoreboard players reset * Grobal
## ゲームモード(0:建築伝言/1:建築)
scoreboard players set *mode Grobal 0
## ゲームフェイズ
scoreboard players set *phase Grobal 0
## 参加人数
scoreboard players set *playerNum Grobal 0
scoreboard players set *playerMin Grobal 7
## 制限時間(秒)
scoreboard players set *timeLimit Grobal 300
scoreboard players set *timeRemain Grobal 300

## 準備完了フラグ 0:Not 1:Ready
scoreboard objectives add Ready dummy
scoreboard players reset * Ready
scoreboard objectives setdisplay list Ready

## プレイヤーの居場所
scoreboard objectives add Position dummy
scoreboard players reset * Position

scoreboard objectives add SingleThread dummy
scoreboard players reset * SingleThread

# Jobスレッドを終了させる
scoreboard players set *thread SingleThread 0

team add join "参加表明"
team modify join color green
team empty join

team add play "参加者"
team modify play color red
team empty play

title @a times 0 30 0

function x:area/_base/reset_area
function x:database/init_db

schedule function x:init_after 5s
