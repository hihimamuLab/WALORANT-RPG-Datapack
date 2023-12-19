### attack:attack_enemy/hitted_handling/sword/rec_hit

#advancements剥奪
advancement revoke @a[advancements={attack:sword_hit_detect=true}] only attack:sword_hit_detect

#当たり判定
execute as @e[type=!minecraft:player, dx=0] positioned ^0.99 ^0.99 ^0.99 if entity @s[dx=0] positioned ^-0.99 ^-0.99 ^-0.99 run effect give @s glowing 1 1 true

#リーチ分の再帰
execute positioned ^ ^ ^0.25 if entity @s[distance=..3.3] run function attack:attack_enemy/hitted_handling/sword/rec_hit