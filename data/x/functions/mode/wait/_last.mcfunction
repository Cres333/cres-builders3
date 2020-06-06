## 各モードの表示処理
execute if score *mode Grobal matches 0 run function x:display/message/action/last
execute if score *mode Grobal matches 2 run function x:display/tail/action/last

## 各モードの待受処理
execute if score *mode Grobal matches 0 run function x:mode/message/wait/_last
execute if score *mode Grobal matches 2 run function x:mode/tail/wait/_last

## 待受終了処理
execute if score *end Wait matches 0 run schedule function x:mode/wait/_last 1s
execute if score *end Wait matches 1 run schedule function x:next 5t
execute if score *end Wait matches 1 run scoreboard players reset * Ready
execute if score *end Wait matches 1 run scoreboard objectives remove Wait
