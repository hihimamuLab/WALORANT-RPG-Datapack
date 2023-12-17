### pack:attack_enemy/left_click_detetion/hasnt_weapon

#武器未所持時ファンクション
tag @a[predicate=pack:has_weapon] remove has_weapon
kill @e[type=minecraft:interaction, tag=hit_detection]