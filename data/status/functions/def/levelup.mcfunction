### status:def/levelup

# レベルアップ時のdef加算
#ランダムな数字を取得
execute store result score @s rng run random roll 0..100 minecraft:wrd

#predicatesを使用してdef加算
execute if predicate status:def/rng0_33 run scoreboard players add @s def 3
execute if predicate status:def/rng34_66 run scoreboard players add @s def 4
execute if predicate status:def/rng67_99 run scoreboard players add @s def 5