# お題記入フェイズ
## テレポート前の準備
gamemode adventure @a[team=play]
clear @a[team=play]
effect clear @a[team=play]

## テレポート
scoreboard objectives add Now dummy
execute as @a[team=play] run scoreboard players operation @s Now = @s ID
function x:pos/tp/title
scoreboard objectives remove Now

## 少し後に第一建築エリアを再生成
schedule function x:area/red/generate 1s

## 各モードごとの設定
execute if score *mode Grobal matches 0 run schedule function x:mode/message/_title 25t
execute if score *mode Grobal matches 1 run schedule function x:mode/build/_title 25t
execute if score *mode Grobal matches 2 run schedule function x:mode/tail/_title 25t

## お題が全て書かれるまで待機
scoreboard objectives add Wait dummy
scoreboard players set *end Wait 0
function x:mode/wait/_title
