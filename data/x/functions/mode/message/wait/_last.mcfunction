scoreboard players set *sum Ready 0
scoreboard players operation *sum Ready += @a[team=play] Ready

execute if score *sum Ready = *playerNum Grobal run scoreboard players set *end Wait 1
