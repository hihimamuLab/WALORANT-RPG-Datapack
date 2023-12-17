### pack:attack_enemy/main

#武器所持検知
tag @a[predicate=pack:has_weapon] add has_weapon
execute as @a[predicate=!pack:has_weapon] at @s run function pack:attack_enemy/left_click_detection/hasnt_weapon

#武器所持時左クリック検知インタラクション召喚
execute as @a[tag=has_weapon] at @s run function pack:attack_enemy/left_click_detection/summon_lcd_slime
execute as @e[type=minecraft:slime, tag=hit_detection] if data entity @s {PortalCooldown:0} run function pack:attack_enemy/left_click_detection/kill_lcd_slime