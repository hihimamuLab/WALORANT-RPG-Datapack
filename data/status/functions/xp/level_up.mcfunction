### status:xp/level_up

# level up
execute if predicate status:xp/less_99_level if score @s xp >= @s next_xp run scoreboard players add @s level 1
execute unless predicate status:xp/less_99_level run function status:xp/level100
# xpが200000を超過しない
execute if predicate status:xp/xp_200000 run scoreboard players operation @s xp = @s next_xp