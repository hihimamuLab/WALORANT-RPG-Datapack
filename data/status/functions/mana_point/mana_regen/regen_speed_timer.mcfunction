### status:mana_point/mana_regen/regen_speed_timer

scoreboard players add @s regen_speed_timer 1
execute if predicate status:mana_point/regen_mana/regen_speed_timer run function status:mana_point/mana_regen/mana_regen
