# Databaseの情報破棄
## 看板の一時名前保管先を削除
data merge block 10000 1 10000 {Text1:"",Text2:"",Text3:"",Text4:""}
data merge block 10000 2 10000 {Text1:"",Text2:"",Text3:"",Text4:""}
data merge block 10000 3 10000 {Text1:"",Text2:"",Text3:"",Text4:""}
## アマスタの名前を削除
execute as @e[tag=db] run data modify entity @s CustomName set value '{"text":""}'
execute as @e[tag=db,tag=name] run data modify entity @s CustomName set value '{"text":"名無しの権兵衛"}'
