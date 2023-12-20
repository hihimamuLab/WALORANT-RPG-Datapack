### status:mana_point/mana_bar/mana_bar

xp set @a 0 levels

scoreboard players operation $MP_Bar mp_bar = @s mp
execute if score $MP_Bar mp_bar matches 128.. run xp add @s 128 levels
execute if score $MP_Bar mp_bar matches 128.. run scoreboard players remove $MP_Bar mp_bar 128
execute if score $MP_Bar mp_bar matches 64.. run xp add @s 64 levels
execute if score $MP_Bar mp_bar matches 64.. run scoreboard players remove $MP_Bar mp_bar 64
execute if score $MP_Bar mp_bar matches 32.. run xp add @s 32 levels
execute if score $MP_Bar mp_bar matches 32.. run scoreboard players remove $MP_Bar mp_bar 32
execute if score $MP_Bar mp_bar matches 16.. run xp add @s 16 levels
execute if score $MP_Bar mp_bar matches 16.. run scoreboard players remove $MP_Bar mp_bar 16
execute if score $MP_Bar mp_bar matches 8.. run xp add @s 8 levels
execute if score $MP_Bar mp_bar matches 8.. run scoreboard players remove $MP_Bar mp_bar 8
execute if score $MP_Bar mp_bar matches 4.. run xp add @s 4 levels
execute if score $MP_Bar mp_bar matches 4.. run scoreboard players remove $MP_Bar mp_bar 4
execute if score $MP_Bar mp_bar matches 2.. run xp add @s 2 levels
execute if score $MP_Bar mp_bar matches 2.. run scoreboard players remove $MP_Bar mp_bar 2
execute if score $MP_Bar mp_bar matches 1.. run xp add @s 1 levels
execute if score $MP_Bar mp_bar matches 1.. run scoreboard players remove $MP_Bar mp_bar 1

scoreboard players reset $MP_Bar mp_bar

stopsound hihimamu player minecraft:entity.player.levelup