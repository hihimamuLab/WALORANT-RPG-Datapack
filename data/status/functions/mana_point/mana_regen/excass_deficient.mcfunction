### status:mana_point/mana_regen/excass_deficient

# mpが0を下回らないようにする
execute if score @s mp < #0 Constant run scoreboard players operation @s mp = #0 Constant

# mpがmp_maxを超過しないようにする
execute if score @s mp > @s mp_max run scoreboard players operation @s mp = @s mp_max