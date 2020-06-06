# 第三回回答フェイズ
## テレポート前の準備
gamemode creative @a[team=play]
clear @a[team=play]

## テレポート
scoreboard objectives add Now dummy
execute as @a[team=play] run scoreboard players operation @s Now = @s AnsPos3
function x:pos/tp/yellow
scoreboard objectives remove Now

## 壁を作成
schedule function x:area/blue/air_wall 1s

## 持ち物
give @a[team=play] minecraft:paper

## お題が全て書かれるまで待機
scoreboard objectives add Wait dummy
scoreboard players set *end Wait 0
function x:mode/wait/_answer3
