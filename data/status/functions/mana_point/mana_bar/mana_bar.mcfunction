### status:mana_point/mana_bar/mana_bar

# mpからxpバーへの置き換え
#レベル129設定
xp set @s 129 levels
execute store result score $Points mp_bar run xp query @s points

#代入経験値計算 mp<$Points> + (mp<$Diff> * 1000 / mp_max - mp<$Points>) / 6
scoreboard players operation $Diff mp_bar = @s mp
scoreboard players operation $Diff mp_bar *= #1000 Constant
scoreboard players operation $Diff mp_bar /= @s mp_max
scoreboard players operation $Diff mp_bar -= $Points mp_bar
scoreboard players operation $Diff mp_bar /= #10 Constant
scoreboard players operation $Points mp_bar += $Diff mp_bar

# スコアの値を経験値に代入
xp set @s 0 points
execute if predicate status:mana_point/mana_bar/xp_points/over_512 run xp add @s 512 points
execute if predicate status:mana_point/mana_bar/xp_points/over_512 run scoreboard players remove $Points mp_bar 512
execute if predicate status:mana_point/mana_bar/xp_points/over_256 run xp add @s 256 points
execute if predicate status:mana_point/mana_bar/xp_points/over_256 run scoreboard players remove $Points mp_bar 256
execute if predicate status:mana_point/mana_bar/xp_points/over_128 run xp add @s 128 points
execute if predicate status:mana_point/mana_bar/xp_points/over_128 run scoreboard players remove $Points mp_bar 128
execute if predicate status:mana_point/mana_bar/xp_points/over_64 run xp add @s 64 points
execute if predicate status:mana_point/mana_bar/xp_points/over_64 run scoreboard players remove $Points mp_bar 64
execute if predicate status:mana_point/mana_bar/xp_points/over_32 run xp add @s 32 points
execute if predicate status:mana_point/mana_bar/xp_points/over_32 run scoreboard players remove $Points mp_bar 32
execute if predicate status:mana_point/mana_bar/xp_points/over_16 run xp add @s 16 points
execute if predicate status:mana_point/mana_bar/xp_points/over_16 run scoreboard players remove $Points mp_bar 16
execute if predicate status:mana_point/mana_bar/xp_points/over_8 run xp add @s 8 points
execute if predicate status:mana_point/mana_bar/xp_points/over_8 run scoreboard players remove $Points mp_bar 8
execute if predicate status:mana_point/mana_bar/xp_points/over_4 run xp add @s 4 points
execute if predicate status:mana_point/mana_bar/xp_points/over_4 run scoreboard players remove $Points mp_bar 4
execute if predicate status:mana_point/mana_bar/xp_points/over_2 run xp add @s 2 points
execute if predicate status:mana_point/mana_bar/xp_points/over_2 run scoreboard players remove $Points mp_bar 2
execute if predicate status:mana_point/mana_bar/xp_points/over_1 run xp add @s 1 points
execute if predicate status:mana_point/mana_bar/xp_points/over_1 run scoreboard players remove $Points mp_bar 1

# mpからxpレベルへの置き換え
xp set @s 0 levels

scoreboard players operation $Levels mp_bar = @s mp
execute if predicate status:mana_point/mana_bar/xp_levels/over_128 run xp add @s 128 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_128 run scoreboard players remove $Levels mp_bar 128
execute if predicate status:mana_point/mana_bar/xp_levels/over_64 run xp add @s 64 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_64 run scoreboard players remove $Levels mp_bar 64
execute if predicate status:mana_point/mana_bar/xp_levels/over_32 run xp add @s 32 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_32 run scoreboard players remove $Levels mp_bar 32
execute if predicate status:mana_point/mana_bar/xp_levels/over_16 run xp add @s 16 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_16 run scoreboard players remove $Levels mp_bar 16
execute if predicate status:mana_point/mana_bar/xp_levels/over_8 run xp add @s 8 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_8 run scoreboard players remove $Levels mp_bar 8
execute if predicate status:mana_point/mana_bar/xp_levels/over_4 run xp add @s 4 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_4 run scoreboard players remove $Levels mp_bar 4
execute if predicate status:mana_point/mana_bar/xp_levels/over_2 run xp add @s 2 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_2 run scoreboard players remove $Levels mp_bar 2
execute if predicate status:mana_point/mana_bar/xp_levels/over_1 run xp add @s 1 levels
execute if predicate status:mana_point/mana_bar/xp_levels/over_1 run scoreboard players remove $Levels mp_bar 1

# その他
#スコアのリセット
scoreboard players reset $Levels mp_bar
scoreboard players reset $Diff mp_bar
scoreboard players reset $Points mp_bar
#最大マナとの連動
function status:mana_point/max_mana/max_mana

#レベルアップ音消去
stopsound @s player minecraft:entity.player.levelup