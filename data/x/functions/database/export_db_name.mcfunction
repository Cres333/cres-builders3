# databaseに名前を登録
data modify block 10000 1 10000 Text1 set value '{"selector":"@p[scores={ID=1}]"}'
data modify block 10000 1 10000 Text2 set value '{"selector":"@p[scores={ID=2}]"}'
data modify block 10000 1 10000 Text3 set value '{"selector":"@p[scores={ID=3}]"}'
data modify block 10000 1 10000 Text4 set value '{"selector":"@p[scores={ID=4}]"}'
data modify block 10000 2 10000 Text1 set value '{"selector":"@p[scores={ID=5}]"}'
data modify block 10000 2 10000 Text2 set value '{"selector":"@p[scores={ID=6}]"}'
data modify block 10000 2 10000 Text3 set value '{"selector":"@p[scores={ID=7}]"}'
data modify block 10000 2 10000 Text4 set value '{"selector":"@p[scores={ID=8}]"}'
data modify block 10000 3 10000 Text1 set value '{"selector":"@p[scores={ID=9}]"}'
data modify block 10000 3 10000 Text2 set value '{"selector":"@p[scores={ID=10}]"}'
data modify block 10000 3 10000 Text3 set value '{"selector":"@p[scores={ID=11}]"}'
data modify block 10000 3 10000 Text4 set value '{"selector":"@p[scores={ID=12}]"}'

data modify entity @e[tag=name,scores={DBID=1},limit=1] CustomName set from block 10000 1 10000 Text1
data modify entity @e[tag=name,scores={DBID=2},limit=1] CustomName set from block 10000 1 10000 Text2
data modify entity @e[tag=name,scores={DBID=3},limit=1] CustomName set from block 10000 1 10000 Text3
data modify entity @e[tag=name,scores={DBID=4},limit=1] CustomName set from block 10000 1 10000 Text4
data modify entity @e[tag=name,scores={DBID=5},limit=1] CustomName set from block 10000 2 10000 Text1
data modify entity @e[tag=name,scores={DBID=6},limit=1] CustomName set from block 10000 2 10000 Text2
data modify entity @e[tag=name,scores={DBID=7},limit=1] CustomName set from block 10000 2 10000 Text3
data modify entity @e[tag=name,scores={DBID=8},limit=1] CustomName set from block 10000 2 10000 Text4
data modify entity @e[tag=name,scores={DBID=9},limit=1] CustomName set from block 10000 3 10000 Text1
data modify entity @e[tag=name,scores={DBID=10},limit=1] CustomName set from block 10000 3 10000 Text2
data modify entity @e[tag=name,scores={DBID=11},limit=1] CustomName set from block 10000 3 10000 Text3
data modify entity @e[tag=name,scores={DBID=12},limit=1] CustomName set from block 10000 3 10000 Text4
