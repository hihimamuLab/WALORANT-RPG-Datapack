### attack:attack_enemy/left_click_detetion/hasnt_weapon

#武器未所持時ファンクション
tag @a[predicate=!attack:has_weapon] remove has_weapon
tp @e[type=minecraft:slime, tag=hit_detection] ~ -1000 ~
kill @e[type=minecraft:slime, tag=hit_detection]