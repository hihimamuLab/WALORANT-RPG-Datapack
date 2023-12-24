### status:hit_point/max_hp/max_hp

# hp最大値リセット
scoreboard players set @s hp_max 0

# hp最大値計算 
scoreboard players operation $Max_HP hp_max = @s level
scoreboard players operation $200_times_level level = @s level
scoreboard players operation $200_times_level level *= #200 Constant

scoreboard players operation $Max_HP hp_max *= $Max_HP hp_max
scoreboard players operation $Max_HP hp_max += #10000 Constant
scoreboard players operation $Max_HP hp_max -= $200_times_level level
scoreboard players operation $Max_HP hp_max /= #77 Constant

scoreboard players operation @s hp_max = #150 Constant
scoreboard players operation @s hp_max -= $Max_HP hp_max

# スコアリセット
scoreboard players reset $Max_HP hp_max
scoreboard players reset $200_times_level level