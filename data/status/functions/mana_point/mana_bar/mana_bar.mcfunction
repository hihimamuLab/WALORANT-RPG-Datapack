### status:mana_point/mana_bar/mana_bar

scoreboard players operation $MP_Bar mp_bar = @a mp
execute if score $MP_Bar mp_bar matches 128.. run xp add @a 128 levels
execute if score $MP_Bar mp_bar matches 128.. run scoreboard players remove $MP_Bar mp_bar 128
execute if score $MP_Bar mp_bar matches 64.. run xp add @a 64 levels
execute if score $MP_Bar mp_bar matches 64.. run scoreboard players remove $MP_Bar mp_bar 64
execute if score $MP_Bar mp_bar matches 32.. run xp add @a 32 levels
execute if score $MP_Bar mp_bar matches 32.. run scoreboard players remove $MP_Bar mp_bar 32
execute if score $MP_Bar mp_bar matches 16.. run xp add @a 16 levels
execute if score $MP_Bar mp_bar matches 16.. run scoreboard players remove $MP_Bar mp_bar 16
execute if score $MP_Bar mp_bar matches 8.. run xp add @a 8 levels
execute if score $MP_Bar mp_bar matches 8.. run scoreboard players remove $MP_Bar mp_bar 8
execute if score $MP_Bar mp_bar matches 4.. run xp add @a 4 levels
execute if score $MP_Bar mp_bar matches 4.. run scoreboard players remove $MP_Bar mp_bar 4
execute if score $MP_Bar mp_bar matches 2.. run xp add @a 2 levels
execute if score $MP_Bar mp_bar matches 2.. run scoreboard players remove $MP_Bar mp_bar 2
execute if score $MP_Bar mp_bar matches 1.. run xp add @a 1 levels
execute if score $MP_Bar mp_bar matches 1.. run scoreboard players remove $MP_Bar mp_bar 1

scoreboard players reset $MP_Bar mp_bar