### attack:attack_enemy/left_click_detetion/summon_lcd_slime

#左クリック検知用スライム召喚
execute as @a[tag=has_weapon] at @s anchored eyes run summon minecraft:slime ^ ^-0.15 ^ {Tags:["hit_detection"], NoAI:1b, NoGravity:1b, Silent:1b, PortalCooldown:1, Team:"hit_detection", Size:1}
execute as @a[tag=has_weapon] at @s anchored eyes run summon minecraft:slime ^ ^-0.25 ^0.2 {Tags:["hit_detection"], NoAI:1b, NoGravity:1b, Silent:1b, PortalCooldown:1, Team:"hit_detection", Size:1}