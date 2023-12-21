### status:mana_point/mana_bar/mana_bar

# xpレベルのリセット
xp set @s 0 levels

# mp_maxからxpレベルへの置き換え
scoreboard players operation $Levels mp_bar = @s mp
execute if score $Levels mp_bar matches 128.. run xp add @s 128 levels
execute if score $Levels mp_bar matches 128.. run scoreboard players remove $Levels mp_bar 128
execute if score $Levels mp_bar matches 64.. run xp add @s 64 levels
execute if score $Levels mp_bar matches 64.. run scoreboard players remove $Levels mp_bar 64
execute if score $Levels mp_bar matches 32.. run xp add @s 32 levels
execute if score $Levels mp_bar matches 32.. run scoreboard players remove $Levels mp_bar 32
execute if score $Levels mp_bar matches 16.. run xp add @s 16 levels
execute if score $Levels mp_bar matches 16.. run scoreboard players remove $Levels mp_bar 16
execute if score $Levels mp_bar matches 8.. run xp add @s 8 levels
execute if score $Levels mp_bar matches 8.. run scoreboard players remove $Levels mp_bar 8
execute if score $Levels mp_bar matches 4.. run xp add @s 4 levels
execute if score $Levels mp_bar matches 4.. run scoreboard players remove $Levels mp_bar 4
execute if score $Levels mp_bar matches 2.. run xp add @s 2 levels
execute if score $Levels mp_bar matches 2.. run scoreboard players remove $Levels mp_bar 2
execute if score $Levels mp_bar matches 1.. run xp add @s 1 levels
execute if score $Levels mp_bar matches 1.. run scoreboard players remove $Levels mp_bar 1

# mpからxpバーへの置き換え
#レベル129設定
xp set @s 129 levels
execute store result score $Points mp_bar run xp query @s points

#代入経験値計算 mp<$Points> + (mp<$Diff> * 1000 / mp_max - mp<$Points>) / 6
scoreboard players operation $Diff mp_bar = @s mp

# その他設定
#mp_barのリセット
scoreboard players reset $MP_Max mp_bar

#レベルアップ音消去
stopsound @s player minecraft:entity.player.levelup

#advancements剥奪
advancement revoke @s only status:player_selector