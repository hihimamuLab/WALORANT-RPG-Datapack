### pack:attack_enemy/hitted_handling/hammer/rec_hit

#当たり判定
execute as @e[type=!minecraft:player, dx=0] positioned ^0.99 ^0.99 ^0.99 if entity @s[dx=0] positioned ^-0.99 ^-0.99 ^-0.99 run effect give @s glowing 1 1 true

#リーチ分の再帰
execute positioned ^ ^ ^0.25 if entity @s[distance=..1.5] run function pack:attack_enemy/hitted_handling/hammer/rec_hit

#advancements剥奪
advancement revoke @a[advancements={pack:hammer_hit_detect=true}] only pack:hammer_hit_detect