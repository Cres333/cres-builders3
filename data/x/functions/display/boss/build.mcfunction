execute store result bossbar minecraft:timer value run scoreboard players get *timeRemain Grobal
bossbar set minecraft:timer name [{"text":"残り時間: "},{"score":{"name":"*timeRemain","objective":"Grobal"}},{"text":" 秒"}]
bossbar set minecraft:timer players @a
execute if score *timeRemain Grobal matches 60 run bossbar set minecraft:timer color red
