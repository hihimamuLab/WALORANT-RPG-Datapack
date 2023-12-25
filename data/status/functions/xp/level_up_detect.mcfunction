### status:xp/level_up_detect

# level up
execute if predicate status:xp/less_99_level if score @s xp >= @s next_xp run function status:xp/level_up
execute unless predicate status:xp/less_99_level if predicate status:xp/xp_204020 run function status:xp/xp_max
# xpが204020を超過しない
execute if predicate status:xp/xp_204020 run scoreboard players operation @s xp = @s next_xp