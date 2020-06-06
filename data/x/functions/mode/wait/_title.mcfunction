## 各モードの表示処理
execute if score *mode Grobal matches 0 run function x:display/message/action/title
execute if score *mode Grobal matches 1 run function x:display/build/action/title
execute if score *mode Grobal matches 2 run function x:display/tail/action/title

## 各モードの待受処理
execute if score *mode Grobal matches 0 run function x:mode/message/wait/_title
execute if score *mode Grobal matches 1 run function x:mode/build/wait/_title
execute if score *mode Grobal matches 2 run function x:mode/tail/wait/_title

## 待受終了処理
execute if score *end Wait matches 0 run schedule function x:mode/wait/_title 1s
execute if score *end Wait matches 1 run function x:database/export_db_title
execute if score *end Wait matches 1 run schedule function x:next 5t
execute if score *end Wait matches 1 run scoreboard players reset * Ready
execute if score *end Wait matches 1 run scoreboard objectives remove Wait
