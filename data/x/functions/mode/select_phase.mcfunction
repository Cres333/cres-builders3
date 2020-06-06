# ゲームフェイズの切り替え
execute if score *phase Grobal matches 1 run function x:mode/title
execute if score *phase Grobal matches 2 run function x:mode/build1
execute if score *phase Grobal matches 3 if score *mode Grobal matches 0 run function x:mode/answer1
execute if score *phase Grobal matches 3 if score *mode Grobal matches 1 run function x:next
execute if score *phase Grobal matches 3 if score *mode Grobal matches 2 run function x:mode/answer1
execute if score *phase Grobal matches 4 run function x:mode/build2
execute if score *phase Grobal matches 5 if score *mode Grobal matches 0 run function x:mode/answer2
execute if score *phase Grobal matches 5 if score *mode Grobal matches 1 run function x:next
execute if score *phase Grobal matches 5 if score *mode Grobal matches 2 run function x:mode/answer2
execute if score *phase Grobal matches 6 run function x:mode/build3
execute if score *phase Grobal matches 7 if score *mode Grobal matches 0 run function x:mode/answer3
execute if score *phase Grobal matches 7 if score *mode Grobal matches 1 run function x:next
execute if score *phase Grobal matches 7 if score *mode Grobal matches 2 run function x:mode/answer3
execute if score *phase Grobal matches 8 if score *mode Grobal matches 0 run function x:mode/last_check
execute if score *phase Grobal matches 8 if score *mode Grobal matches 1 run function x:next
execute if score *phase Grobal matches 8 if score *mode Grobal matches 2 run function x:mode/last_check
execute if score *phase Grobal matches 9 run function x:mode/finish_game

execute if score *phase Grobal matches 0 run function x:mode/finish_game
