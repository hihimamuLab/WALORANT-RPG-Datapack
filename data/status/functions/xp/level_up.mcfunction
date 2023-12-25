### status:xp/level_up

execute if predicate status:xp/less_99_level if score @s xp >= @s next_xp run scoreboard players add @s level 1
execute unless predicate status:xp/less_99_level run advancement grant @s only status:level100