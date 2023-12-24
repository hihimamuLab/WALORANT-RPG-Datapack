### status:hit_point/regen_hp/regen_hp

# タイマーのスコアリセット
scoreboard players set @s hp_regen_speed_timer 0

# hpの自然回復
#mp_regenの設定
#level 0~20
execute if predicate status:hit_point/regen_hp/level0_20 run scoreboard players set @s hp_regen 2
#level 21~40
execute if predicate status:hit_point/regen_hp/level21_40 run scoreboard players set @s hp_regen 3
#level 41~60
execute if predicate status:hit_point/regen_hp/level41_60 run scoreboard players set @s hp_regen 4
#level 61~80
execute if predicate status:hit_point/regen_hp/level61_80 run scoreboard players set @s hp_regen 5
#level 81~100
execute if predicate status:hit_point/regen_hp/level81_100 run scoreboard players set @s hp_regen 6

# hpの回復
scoreboard players operation @s hp += @s hp_regen