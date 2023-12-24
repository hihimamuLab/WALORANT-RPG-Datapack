### status:hit_point/regen_hp/excass_deficient

# hpが0を下回らないようにする
execute if score @s hp < #0 Constant run scoreboard players operation @s hp = #0 Constant

# hpがhp_maxを超過しないようにする
execute if score @s hp > @s hp_max run scoreboard players operation @s hp = @s hp_max