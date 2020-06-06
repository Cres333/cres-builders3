# 状態変更エリア
execute as @a[team=,gamemode=!spectator,x=229,y=59.5,z=-44,dx=4,dy=1,dz=4] run team join join @s
execute as @a[team=join,gamemode=!spectator,x=247,y=59.5,z=-44,dx=4,dy=1,dz=4] run team leave @s
execute as @a[gamemode=!spectator,x=229,y=59.5,z=-32,dx=4,dy=1,dz=4] run gamemode spectator @s
execute as @a[gamemode=spectator,x=229,y=59.5,z=-32,dx=4,dy=1,dz=4] run tp @s 20 81 -20 0 0
execute as @a[gamemode=spectator,x=238,y=76.5,z=-32,dx=4,dy=4,dz=4] run gamemode adventure @s
execute as @a[gamemode=!spectator,x=238,y=76.5,z=-32,dx=4,dy=4,dz=4] run tp @s 240 61.5 -40 180 0

# テレポートエリア
execute as @a[team=!play,gamemode=spectator,scores={Position=501}] positioned 20 81 -20 run tp @s ~40 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=502}] positioned 20 81 -20 run tp @s ~80 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=503}] positioned 20 81 -20 run tp @s ~120 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=504}] positioned 20 81 -20 run tp @s ~160 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=505}] positioned 20 81 -20 run tp @s ~200 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=506}] positioned 20 81 -20 run tp @s ~240 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=507}] positioned 20 81 -20 run tp @s ~280 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=508}] positioned 20 81 -20 run tp @s ~320 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=509}] positioned 20 81 -20 run tp @s ~360 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=510}] positioned 20 81 -20 run tp @s ~400 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=511}] positioned 20 81 -20 run tp @s ~440 ~ ~ 0 0
execute as @a[team=!play,gamemode=spectator,scores={Position=512}] positioned 20 81 -20 run tp @s 238 78 -32 180 0

# アマスタ/プレイヤー/アイテム以外でArmorItemsのデータを持っているが、NoAIのデータを持っていないエンティティを停止させる
execute as @e[type=!armor_stand,type=!player,type=!item,nbt=!{NoAI:1b}] if data entity @s ArmorItems unless data entity @s NoAI run data merge entity @s {NoAI:1b,Health:0.1f,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Invulnerable:1b,Fire:-1s,PersistentRequired:1b}
