# アーマースタンド召喚
## 初期化
kill @e[tag=db]

## 名前登録用アマスタ
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}
summon minecraft:armor_stand ~ 1 ~ {Tags:["db","name"],Marker:1b,NoGravity:1b}

## nameをベースに全12体ずつ召喚
### お題登録用
execute as @e[tag=db,tag=name] at @s run summon minecraft:armor_stand ~ 1 ~ {Tags:["db","title"],Marker:1b,NoGravity:1b}
### 回答１登録用
execute as @e[tag=db,tag=name] at @s run summon minecraft:armor_stand ~ 1 ~ {Tags:["db","answer1"],Marker:1b,NoGravity:1b}
### 回答２登録用
execute as @e[tag=db,tag=name] at @s run summon minecraft:armor_stand ~ 1 ~ {Tags:["db","answer2"],Marker:1b,NoGravity:1b}
### 回答３登録用
execute as @e[tag=db,tag=name] at @s run summon minecraft:armor_stand ~ 1 ~ {Tags:["db","answer3"],Marker:1b,NoGravity:1b}

## アマスタの名前を初期値に設定
execute as @e[tag=db] run data modify entity @s CustomName set value '{"text":""}'
execute as @e[tag=db,tag=name] run data modify entity @s CustomName set value '{"text":"名無しの権兵衛"}'

## スコアボード
scoreboard objectives remove DBID
scoreboard objectives add DBID dummy "データベース用ID"
### 各アマスタにIDを1～12割当
scoreboard players set @e[tag=db] DBID 0
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
function x:database/armor_stand/_generate_id
