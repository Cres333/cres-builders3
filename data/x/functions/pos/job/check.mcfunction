scoreboard players reset * Position
scoreboard objectives add Y dummy
scoreboard objectives add X dummy

execute as @a store result score @s Y run data get entity @s Pos[2]
execute as @a store result score @s X run data get entity @s Pos[0]

execute as @a if score @s Y matches -15..135 if score @s X matches 1..480 run function x:pos/vh/vertical
execute as @a if score @s Y matches -15..135 if score @s X matches 1..480 run function x:pos/vh/horizontal

scoreboard objectives remove Y
scoreboard objectives remove X

execute if score *thread SingleThread matches 1 run schedule function x:pos/job/check 10t

effect give @a[team=!play] minecraft:resistance 2 100 true
effect give @a[team=!play] minecraft:water_breathing 2 100 true
effect give @a[team=!play] minecraft:saturation 1000000 100 true
