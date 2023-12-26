### status:xp/level_up

# level up時のファンクション
scoreboard players add @s level 1
scoreboard players operation $OverlapXP xp = @s xp
scoreboard players operation $OverlapXP xp -= @s next_xp 
scoreboard players set @s xp 0
scoreboard players operation @s xp += $OverlapXP xp

scoreboard players reset $OverlapXP xp