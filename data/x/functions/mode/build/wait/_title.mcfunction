# Off Handに名前変更済みの紙を持っている場合は 1 、持っていない場合は 0 をReadyの各プレイヤーに入れる
execute as @a[team=play] store success score @s Ready if data entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:paper"}]}] Inventory[-1].tag.display.Name
scoreboard players set *sum Ready 0
scoreboard players operation *sum Ready += @a[team=play] Ready

scoreboard players operation *remain Ready = *playerMin Grobal
scoreboard players operation *remain Ready -= *sum Ready
title @a[team=play] subtitle [{"text":"あと"},{"score":{"name":"*remain","objective":"Ready"},"color":"red"},{"text":"人"}]
title @a[team=play] title ""

execute if score *end Wait matches 1 run title @a[team=play] clear
execute if score *sum Ready = *playerMin Grobal run scoreboard players set *end Wait 1
