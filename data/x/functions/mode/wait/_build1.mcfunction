## タイマー減算
scoreboard players remove *timeRemain Grobal 1

## 各モードの表示処理
execute if score *mode Grobal matches 0 run function x:display/message/action/build1
execute if score *mode Grobal matches 1 run function x:display/build/action/build1
execute if score *mode Grobal matches 2 run function x:display/tail/action/build1
function x:display/boss/build

## 終了条件
execute if score *timeRemain Grobal matches ..0 run scoreboard players set *end Wait 1

## 待受終了処理
execute if score *end Wait matches 0 run schedule function x:mode/wait/_build1 1s
execute if score *end Wait matches 1 run schedule function x:next 1t
execute if score *end Wait matches 1 run bossbar remove minecraft:timer
execute if score *end Wait matches 1 as @e[type=item] run data merge entity @s {PickupDelay:-1s,Age:-32768s}
execute if score *end Wait matches 1 run scoreboard objectives remove Wait
