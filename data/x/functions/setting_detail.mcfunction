scoreboard objectives add Book dummy
scoreboard players set *page Book -1

execute store result score *page Book run data get block 240 61 -42 Page

execute if score *page Book matches 0..9 run scoreboard players set *mode Grobal 0
execute if score *page Book matches 10..19 run scoreboard players set *mode Grobal 1
execute if score *page Book matches 20..29 run scoreboard players set *mode Grobal 2

execute if score *mode Grobal matches 0 run scoreboard players set *playerMin Grobal 7
execute if score *mode Grobal matches 1 run scoreboard players set *playerMin Grobal 3
execute if score *mode Grobal matches 2 run scoreboard players set *playerMin Grobal 5

execute if score *page Book matches 0 run scoreboard players set *timeLimit Grobal 180
execute if score *page Book matches 10 run scoreboard players set *timeLimit Grobal 180
execute if score *page Book matches 20 run scoreboard players set *timeLimit Grobal 180
execute if score *page Book matches 1 run scoreboard players set *timeLimit Grobal 300
execute if score *page Book matches 11 run scoreboard players set *timeLimit Grobal 300
execute if score *page Book matches 21 run scoreboard players set *timeLimit Grobal 300
execute if score *page Book matches 2 run scoreboard players set *timeLimit Grobal 420
execute if score *page Book matches 12 run scoreboard players set *timeLimit Grobal 420
execute if score *page Book matches 22 run scoreboard players set *timeLimit Grobal 420
execute if score *page Book matches 3 run scoreboard players set *timeLimit Grobal 600
execute if score *page Book matches 13 run scoreboard players set *timeLimit Grobal 600
execute if score *page Book matches 23 run scoreboard players set *timeLimit Grobal 600

scoreboard players operation *timeRemain Grobal = *timeLimit Grobal

execute if score *mode Grobal matches 0 run tellraw @a [{"color":"yellow","text":"[設定] モード：建築伝言ゲーム, 制限時間："},{"color":"yellow","score":{"name":"*timeLimit","objective":"Grobal"}},{"color":"yellow","text":"秒 で設定されました"}]
execute if score *mode Grobal matches 1 run tellraw @a [{"color":"yellow","text":"[設定] モード：建築ゲーム, 制限時間："},{"color":"yellow","score":{"name":"*timeLimit","objective":"Grobal"}},{"color":"yellow","text":"秒 で設定されました"}]
execute if score *mode Grobal matches 2 run tellraw @a [{"color":"yellow","text":"[設定] モード：建築しりとりゲーム, 制限時間："},{"color":"yellow","score":{"name":"*timeLimit","objective":"Grobal"}},{"color":"yellow","text":"秒 で設定されました"}]
