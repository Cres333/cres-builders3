# 回答確認フェイズ
## テレポート前の準備
gamemode adventure @a[team=play]
clear @a[team=play]

## テレポート
scoreboard objectives add Now dummy
execute as @a[team=play] run scoreboard players operation @s Now = @s ID
function x:pos/tp/last
scoreboard objectives remove Now

## 確認が終わるまで待機
scoreboard objectives add Wait dummy
scoreboard players set *end Wait 0
function x:mode/wait/_last
