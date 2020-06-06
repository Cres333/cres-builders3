# ゲーム開始成功時
## プレイヤー名をdatabaseに保存
function x:database/export_db_name

## 場所用のID初期化
scoreboard objectives remove BuildPos1
scoreboard objectives remove BuildPos2
scoreboard objectives remove BuildPos3
scoreboard objectives remove AnsPos1
scoreboard objectives remove AnsPos2
scoreboard objectives remove AnsPos3
scoreboard objectives add BuildPos1 dummy
scoreboard objectives add BuildPos2 dummy
scoreboard objectives add BuildPos3 dummy
scoreboard objectives add AnsPos1 dummy
scoreboard objectives add AnsPos2 dummy
scoreboard objectives add AnsPos3 dummy

## DBの場所用のID初期化
scoreboard objectives remove DbBuildPos1
scoreboard objectives remove DbBuildPos2
scoreboard objectives remove DbBuildPos3
scoreboard objectives remove DbAnsPos1
scoreboard objectives remove DbAnsPos2
scoreboard objectives remove DbAnsPos3
scoreboard objectives add DbBuildPos1 dummy
scoreboard objectives add DbBuildPos2 dummy
scoreboard objectives add DbBuildPos3 dummy
scoreboard objectives add DbAnsPos1 dummy
scoreboard objectives add DbAnsPos2 dummy
scoreboard objectives add DbAnsPos3 dummy

## ランダム値生成
scoreboard objectives add Random dummy
execute store result score *n Random run scoreboard players get @r[team=play,limit=1,scores={ID=1..4}] ID

## 各エリアのId割り振り
execute as @a[team=play] run function x:id/position/_setting_position
scoreboard objectives remove Random

## Databaseに場所のIDをコピー
function x:id/position/_copy_position_id
