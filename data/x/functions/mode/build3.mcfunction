# 第三回建築フェイズ
## テレポート前の準備
gamemode creative @a[team=play]
clear @a[team=play]

## テレポート
scoreboard objectives add Now dummy
execute as @a[team=play] run scoreboard players operation @s Now = @s BuildPos3
function x:pos/tp/blue
scoreboard objectives remove Now

## 少し後に最終回答エリアと回答確認エリアを再生成
schedule function x:area/yellow/generate 1s
schedule function x:area/last/generate 6s

## 持ち物
replaceitem entity @a[team=play] container.9 minecraft:barrier

## 各モードごとの設定
execute if score *mode Grobal matches 1 run gamemode spectator @p[team=play,scores={ID=3}]

## ボスバーの設定
scoreboard players operation *timeRemain Grobal = *timeLimit Grobal
scoreboard players add *timeRemain Grobal 1
bossbar add timer ""
bossbar set minecraft:timer players @a
bossbar set minecraft:timer color green
bossbar set minecraft:timer style progress
bossbar set minecraft:timer visible true
execute store result bossbar minecraft:timer max run scoreboard players get *timeLimit Grobal
execute store result bossbar minecraft:timer value run scoreboard players get *timeRemain Grobal

## お題が全て書かれるまで待機
scoreboard objectives add Wait dummy
scoreboard players set *end Wait 0
function x:mode/wait/_build3
