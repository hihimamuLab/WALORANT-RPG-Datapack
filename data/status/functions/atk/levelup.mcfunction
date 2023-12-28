### status:atk/level_up

# レベルアップ時のatk加算
#ランダムな数字を取得
execute store result score @s rng run random roll 0..100 minecraft:wrd

#predicatesを使用してatk加算
execute if predicate status:atk/rng0_33 run scoreboard players add @s atk 3
execute if predicate status:atk/rng34_66 run scoreboard players add @s atk 4
execute if predicate status:atk/rng67_99 run scoreboard players add @s atk 5